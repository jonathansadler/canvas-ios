// @flow

import React, { Component } from 'react'
import {
  View,
  StyleSheet,
  ActivityIndicator,
} from 'react-native'
import i18n from 'format-message'
import refresh from '../../utils/refresh'
import { connect } from 'react-redux'
import SubmissionActions from '../submissions/list/actions'
import SubmissionGrader from './SubmissionGrader'

export class Speedgrader extends Component {
  props: SpeedgraderProps

  static navigatorButtons = {
    rightButtons: [{
      title: i18n('Done'),
      id: 'done',
      testId: 'done_button',
    }],
  }

  constructor (props: SpeedgraderProps) {
    super(props)

    props.navigator.setOnNavigatorEvent(this.onNavigatorEvent)
    props.navigator.setTitle({
      title: i18n({
        default: 'Speedgrader',
        description: 'Grade student submissions',
      }),
    })
  }

  onNavigatorEvent = (event: NavigatorEvent): void => {
    if (event.type === 'NavBarButtonPress') {
      if (event.id === 'done') {
        this.props.navigator.dismissModal()
      }
    }
  }

  render (): React.Element<*> {
    if (!this.props.refreshing && this.props.pending || !this.props.submissions) {
      return <View style={styles.loadingWrapper}><ActivityIndicator /></View>
    }

    return (
      <View style={styles.speedGrader}>
        <SubmissionGrader submission={this.props.submissions[0]} />
      </View>
    )
  }
}

const styles = StyleSheet.create({
  speedGrader: {
    flex: 1,
  },
  loadingWrapper: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
})

export function mapStateToProps (state: AppState, ownProps: RoutingProps): SpeedgraderDataProps {
  let assignment = state.entities.assignments[ownProps.assignmentID]
  let submissions = null
  if (assignment) {
    submissions = assignment.submissions.refs.map(submissionID => state.entities.submissions[submissionID])
  }

  return {
    pending: assignment ? Boolean(assignment.submissions.pending) : false,
    submissions,
  }
}

const Refreshed = refresh(
  (props) => props.refreshSubmissions(props.courseID, props.assignmentID),
  (props) => !props.submissions,
  (props) => props.pending
)(Speedgrader)
const Connected = connect(mapStateToProps, SubmissionActions)(Refreshed)

export default (Connected: React.Element<*>)

type RoutingProps = {
  courseID: string,
  assignmentID: string,
  userID: string,
}
type SpeedgraderActionProps = {
  refreshSubmissions: Function,
}
type SpeedgraderDataProps = {
  pending: boolean,
  submissions: ?Array<SubmissionWithHistory>,
}
type SpeedgraderProps = RoutingProps & SpeedgraderActionProps & SpeedgraderDataProps & RefreshProps & NavProps
