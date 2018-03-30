import CanvasCore
import TechDebt
import Marshal

extension AppDelegate: RCTBridgeDelegate {
    func prepareReactNative() {
        NativeLoginManager.shared().delegate = self
        NativeLoginManager.shared().app = .student
        HelmManager.shared.bridge = RCTBridge(delegate: self, launchOptions: nil)
        HelmManager.shared.onReactLoginComplete = {
            guard let session = self.session, let window = self.window else { return }

            let root = rootViewController(session)
            self.addClearCacheGesture(root.view)

            UIView.transition(with: window, duration: 0.25, options: .transitionCrossDissolve, animations: {
                let loading = UIViewController()
                loading.view.backgroundColor = .white
                window.rootViewController = loading
            }, completion: { _ in
                window.rootViewController = root
            })
        }

        HelmManager.shared.onReactReload = {
            NativeLoginManager.shared().stopMasquerding()
            self.showLoadingState()
        }

        registerScreen("/courses/:courseID/assignments/:assignmentID")
        registerScreen("/courses/:courseID/quizzes")
        registerScreen("/courses/:courseID/quizzes/:quizID")
        registerScreen("/:context/:contextID/files/:fileID/download")
        registerScreen("/files/:fileID/download")
        registerScreen("/courses/:courseID/modules")
        registerScreen("/courses/:courseID/modules/:moduleID")
        registerScreen("/courses/:courseID/modules/:moduleID/items/:itemID")
        registerScreen("/courses/:courseID/modules/items/:itemID")

        // Pages
        let pageParamsToProps = { (parameters: [String: Any]) -> [String: Any]? in
            guard let courseID = try? parameters.stringID("courseID") else { return nil }
            guard let url: String = try? parameters <| "url" else { return nil }
            return [
                "courseID": courseID,
                "url": url,
            ]
        }
        registerModuleItemScreen("/courses/:courseID/pages/:url", parametersToProps: pageParamsToProps)
        registerModuleItemScreen("/courses/:courseID/wiki/:url", parametersToProps: pageParamsToProps)

        HelmManager.shared.registerNativeViewController(for: "/profile/settings", factory: { props in
            let settings = SettingsViewController.controller(CKCanvasAPI.current())
            return UINavigationController(rootViewController: settings)
        })

        HelmManager.shared.registerNativeViewController(for: "/groups/:groupID", factory: { props in
            guard let groupID = props["groupID"] as? String else { return nil }

            let url = URL(string: "api/v1/groups/\(groupID)/tabs")
            return Router.shared().controller(forHandling: url)
        })
        
        let nativeFactory: ([String: Any]) -> UIViewController? = { props in
            guard let route = props["route"] as? String else { return nil }
            let url = URL(string: "api/v1/\(route)")
            let controller = Router.shared().controller(forHandling: url)
            
                // Work around all these controllers not setting the nav color
            DispatchQueue.main.async {
                guard let color = RCTConvert.uiColor(props["color"]) else { return }
                controller?.navigationController?.navigationBar.barTintColor = color
                controller?.navigationController?.navigationBar.tintColor = .white
                controller?.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
            }
            
            return controller
        }
        
        HelmManager.shared.registerNativeViewController(for: "/native-route/*route", factory: nativeFactory)
        HelmManager.shared.registerNativeViewController(for: "/native-route-master/*route", factory: nativeFactory)
        
        HelmManager.shared.registerSharedNativeViewControllers()
    }

    func excludeHelmInBranding() {
        let appearance = UINavigationBar.appearance(whenContainedInInstancesOf: [HelmNavigationController.self])
        appearance.barTintColor = nil
        appearance.tintColor = nil
        appearance.titleTextAttributes = nil
    }

    func sourceURL(for bridge: RCTBridge!) -> URL! {
        let url = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index.ios", fallbackResource: nil)
        return url
    }
    
    // Use this if the moduleName maps cleanly to a native route we already have set up.
    open func registerScreen(_ moduleName: ModuleName) {
        HelmManager.shared.registerNativeViewController(for: moduleName, factory: { props in
            guard let url = propsURL(props) else { return nil }
            return Router.shared().controller(forHandling: url)
        })
    }
    
    // Use this if the moduleName maps to a RN view
    // but needs to be embedded in a ModuleItemDetailViewController
    // when a module_item_id param is present
    open func registerModuleItemScreen(_ moduleName: ModuleName, parametersToProps: @escaping ([String: Any]) -> [String: Any]?) {
        let rnModuleName = "\(moduleName)/rn"
        Router.shared().addRoute(moduleName) { parameters, _ in
            var props = parametersToProps(parameters ?? [:]) ?? [:]
            props["location"] = [:]
            return HelmViewController(moduleName: rnModuleName, props: props)
        }
        HelmManager.shared.registerNativeViewController(for: moduleName, factory: { props in
            return moduleItemDetailViewController(props) ?? HelmViewController(moduleName: rnModuleName, props: props)
        })
    }
}

func propsURL(_ props: [String: Any]) -> URL? {
    return hrefProp(props).flatMap(URL.init)
}

func hrefProp(_ props: [String: Any]) -> String? {
    guard let location = props["location"] as? [String: Any] else { return nil }
    return location["href"] as? String
}

func moduleItemDetailViewController(_ props: [String: Any]) -> ModuleItemDetailViewController? {
    guard let url = propsURL(props) else { return nil }
    guard let courseID = props["contextID"] as? String ?? props["courseID"] as? String else { return nil }
    if let components = URLComponents(url: url, resolvingAgainstBaseURL: false),
        let moduleItemID = components.queryItems?.filter({ $0.name == "module_item_id" }).first?.value,
        let session = CanvasKeymaster.the().currentClient?.authSession {
        do {
            return try ModuleItemDetailViewController(session: session, courseID: courseID, moduleItemID: moduleItemID) { (vc, url) in
                Router.shared().route(from: vc, to: url)
            }
        } catch {
            return nil
        }
    }
    return nil
}
