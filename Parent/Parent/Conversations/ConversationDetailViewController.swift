//
// This file is part of Canvas.
// Copyright (C) 2019-present  Instructure, Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//

import Foundation
import Core

class ConversationDetailViewController: UIViewController {

    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    var conversationID: String!
    let env = AppEnvironment.shared
    let refreshControl = UIRefreshControl()
    var userMap = [String: ConversationParticipant]()
    var myID: String = ""

    lazy var conversations = env.subscribe(GetConversation(id: conversationID)) { [weak self] in
        self?.update()
    }

    static func create(conversationID: String) -> ConversationDetailViewController {
        let vc = loadFromStoryboard()
        vc.conversationID = conversationID
        vc.myID = vc.env.currentSession?.userID ?? ""
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refresh()
    }

    private func configureTableView() {
        tableView.refreshControl = refreshControl
        tableView.backgroundColor = .named(.backgroundGrouped)
        refreshControl.addTarget(self, action: #selector(refresh), for: .primaryActionTriggered)
        tableView.registerHeaderFooterView(UITableViewHeaderFooterView.self, fromNib: false)
    }

    @objc func refresh(force: Bool = false) {
        conversations.refresh(force: true)
    }

    func update() {
        if !conversations.pending {
            mapUsers(conversation: conversations.first)
            if refreshControl.isRefreshing { refreshControl.endRefreshing() }
            tableView?.reloadData()
            title = conversations.first?.subject.isEmpty ?? true ? NSLocalizedString("No Subject", comment: "") : conversations.first?.subject
            let lastParticipantCount = conversations.first?.messages.first?.participantIDs.count ?? 0
            if lastParticipantCount > 2 {
                replyButton.setImage(.icon(.replyAll, .solid), for: .normal)
                replyButton.accessibilityLabel = NSLocalizedString("Reply All", comment: "")
            } else {
                replyButton.setImage(.icon(.reply, .solid), for: .normal)
                replyButton.accessibilityLabel = NSLocalizedString("Reply", comment: "")
            }
        }
    }

    func mapUsers(conversation: Conversation?) {
        guard let c = conversation else { return }
        c.participants.forEach { userMap[ $0.id ] = $0 }
    }

    @IBAction func actionReplyClicked(_ sender: Any) {
        guard let message = conversations.first?.messages.first else { return }
        showReplyFor(IndexPath(row: 0, section: 0), all: message.participantIDs.count > 2)
    }

    func showAttachment(_ attachment: File) {
        guard let url = attachment.url else { return }
        env.router.route(to: url, from: self, options: .modal(embedInNav: true, addDoneButton: true))
    }
}

extension ConversationDetailViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        conversations.first?.messages.count ?? 0
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ConversationDetailCell = tableView.dequeue(for: indexPath)
        let msg = conversations.first?.messages[indexPath.section]
        cell.update(msg, myID: myID, userMap: userMap)
        cell.onTapAttachment = { [weak self] file in self?.showAttachment(file) }
        return cell
    }

    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        section + 1 == conversations.first?.messages.count ? 0 : 16
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        var actions: [UIContextualAction] = []
        let reply = UIContextualAction(style: .normal, title: NSLocalizedString("Reply", comment: "")) { [weak self] _, _, success in
            self?.showReplyFor(indexPath, all: false)
            success(true)
        }
        reply.backgroundColor = .named(.electric)
        reply.image = .icon(.reply, .solid)
        actions.append(reply)

        if let msg = conversations.first?.messages[indexPath.section], msg.participantIDs.count > 2 {
            let replyAll = UIContextualAction(style: .normal, title: NSLocalizedString("Reply All", comment: "")) { [weak self] _, _, success in
                self?.showReplyFor(indexPath, all: true)
                success(true)
            }
            replyAll.backgroundColor = .named(.oxford)
            replyAll.image = .icon(.replyAll, .solid)
            actions.append(replyAll)
        }

        return UISwipeActionsConfiguration(actions: actions)
    }

    func showReplyFor(_  indexPath: IndexPath, all: Bool) {
        guard let conversation = conversations.first else { return }
        env.router.show(ComposeReplyViewController.create(
            conversation: conversation,
            message: conversation.messages[indexPath.section],
            all: all
        ), from: self, options: .modal(embedInNav: true))
    }
}

class ConversationDetailCell: UITableViewCell {
    @IBOutlet weak var messageLabel: DynamicLabel!
    @IBOutlet weak var fromLabel: DynamicLabel!
    @IBOutlet weak var toLabel: DynamicLabel!
    @IBOutlet weak var dateLabel: DynamicLabel!
    @IBOutlet weak var avatar: AvatarView!
    @IBOutlet weak var stackview: UIStackView!
    @IBOutlet weak var attachmentStackView: HorizontalScrollingStackview!

    var onTapAttachment: ((File) -> Void)?
    var message: ConversationMessage?

    func update(_ message: ConversationMessage?, myID: String, userMap: [String: ConversationParticipant]) {
        guard let m = message else { return }
        self.message = m
        messageLabel.text = m.body
        toLabel.text = m.localizedAudience(myID: myID, userMap: userMap)
        fromLabel.text = userMap[ m.authorID ]?.name
        dateLabel.text = DateFormatter.localizedString(from: m.createdAt, dateStyle: .medium, timeStyle: .short)
        avatar.url = userMap[ m.authorID ]?.avatarURL
        avatar.name = userMap[ m.authorID ]?.name ?? ""

        attachmentStackView.arrangedSubviews.forEach { v in v.removeFromSuperview() }

        for (index, a) in m.attachments.enumerated() {
            var v: UIView?
            if let icon = a.attachmentIcon {
                let npa = NonPhotoAttachment()
                npa.imageView.image = icon
                npa.label.text = a.displayName
                npa.button.addTarget(self, action: #selector(tapAttachment(sender:)), for: .primaryActionTriggered)
                npa.button.tag = index
                v = npa
            }
            else {
                let pa = PhotoAttachment()
                pa.imageView.load(url: a.previewURL ?? a.thumbnailURL ?? a.url)
                pa.button.addTarget(self, action: #selector(tapAttachment(sender:)), for: .primaryActionTriggered)
                pa.button.tag = index
                v = pa
            }
            attachmentStackView.addArrangedSubview(v!)
            v?.addConstraintsWithVFL("H:[view(120)]")
            v?.addConstraintsWithVFL("V:[view(104)]")
        }
    }

    @objc func tapAttachment(sender: UIButton) {
        guard message?.attachments.count ?? 0 > sender.tag,
            let attachment = message?.attachments[sender.tag] else { return }
        onTapAttachment?(attachment)
    }
}

class PhotoAttachment: UIView {
    var imageView: UIImageView!
    var button: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func commonInit() {
        imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        button = UIButton(type: .system)
        addSubview(imageView)
        addSubview(button)
        imageView.pin(inside: self)
        button.pin(inside: self)

        layer.cornerRadius = 4.0
        layer.masksToBounds = true
    }
}

class NonPhotoAttachment: UIView {
    var imageView: UIImageView!
    var button: UIButton!
    var label: DynamicLabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func commonInit() {
        label = DynamicLabel()
        label.font = UIFont.scaledNamedFont(.regular14)
        label.numberOfLines = 0
        label.textAlignment = .center
        imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        button = UIButton(type: .system)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
        label.addConstraintsWithVFL("V:[view(21)]-(20)-|")
        label.addConstraintsWithVFL("H:|[view]|")
        imageView.addConstraintsWithVFL("V:[view(30)]-(8)-[label]", views: ["label": label])
        imageView.addConstraintsWithVFL("H:[view(30)]")
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        button.pin(inside: self)

        layer.borderColor = tintColor.cgColor
        layer.borderWidth = 1.0
        layer.cornerRadius = 4.0
    }
}


//class ConversationDetailAttachmentCollectionViewCell: UICollectionViewCell {
//    @IBOutlet weak var imageView: UIImageView!
//    @IBOutlet weak var button: UIButton!
//    @IBOutlet weak var nonImageAttachmentContainer: UIView!
//    @IBOutlet weak var nonImageAttachmentImageView: UIImageView!
//    @IBOutlet weak var nonImageAttachmentLabel: DynamicLabel!
//
//    override func prepareForReuse() {
//        super.prepareForReuse()
//    }
//
//    func update(_ attachment: File?) {
//        if let icon = attachment?.attachmentIcon {
//            nonImageAttachmentContainer.isHidden =  false
//            nonImageAttachmentImageView.image = icon
//            nonImageAttachmentLabel.text = attachment?.displayName
//        }
//        else {
//            nonImageAttachmentContainer.isHidden =  true
//            imageView.load(url: attachment?.previewURL ?? attachment?.thumbnailURL ?? attachment?.url)
//            imageView.contentMode = .scaleAspectFill
//        }
//
//        contentView.layer.borderColor = tintColor.cgColor
//        contentView.layer.borderWidth = 1.0
//        contentView.layer.cornerRadius = 8
//        contentView.layer.masksToBounds = true
//    }
//}

//class ConversationAttachmentCollectionViewDataSource: NSObject, UICollectionViewDataSource {
//    var attachments: [File] =  []
//
//    init(attachments: [File]?) {
//        self.attachments = attachments ?? []
//    }
//
//    func registerCells(collectionView: UICollectionView) {
//        let id = String(describing: ConversationDetailAttachmentCollectionViewCell.self)
//        for (i, _) in attachments.enumerated() {
//            collectionView.register(ConversationDetailAttachmentCollectionViewCell.self, forCellWithReuseIdentifier: id + "_\(i)")
//        }
//    }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        attachments.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let id = String(describing: ConversationDetailAttachmentCollectionViewCell.self)
//        let cell = collectionView.dequeue(withReuseIdentifier: id + "_\(indexPath.item)", for: indexPath) as! ConversationDetailAttachmentCollectionViewCell
////        let cell: ConversationDetailAttachmentCollectionViewCell = collectionView.dequeue(for: indexPath)
//        guard attachments.count > indexPath.item else { return cell }
//        let attachment = attachments[indexPath.item]
//        cell.button.tag = indexPath.item
//        cell.update(attachment)
//
//        return cell
//    }
//}
