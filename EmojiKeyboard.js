import React from 'react'
import PropTypes from 'prop-types'
import {requireNativeComponent} from 'react-native'

export default class EmojiKeyboard extends React.PureComponent {
	static propTypes = {
		/**
		 * Called when the user pressed on an emoji
		 */
		onEmojiPicked: PropTypes.func,

		/**
		 * Called when a user removed an emoji by pressing on the delete button of the keyboard.
		 * The delete button must be visible for this to work
		 */
		onEmojiRemoved: PropTypes.func,

		/**
		 * Should the view keyboard have a delete button?
		 */
		showDeleteButton: PropTypes.bool,

		bgColor: PropTypes.string,

		style: PropTypes.any,
	}

	static defaultProps = {
		onEmojiPicked   : () => null,
		onEmojiRemoved  : () => null,
		showDeleteButton: true,
		bgColor         : 'rgba(249, 249, 249, 0)'
	}

	render() {
		return (
			<RCTEmojiKeyboard
				style={[{height: 236, alignSelf: 'stretch'}, this.props.style]}
				onEmojiPicked={e => this.props.onEmojiPicked(e.nativeEvent.emoji)}
				onEmojiRemoved={() => this.props.onEmojiRemoved()}
				bgColor={this.props.bgColor}
				showDeleteButton={this.props.showDeleteButton}
			/>
		);
	}
}

const RCTEmojiKeyboard = requireNativeComponent('RNEmojiKeyboard', EmojiKeyboard)
