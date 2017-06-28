/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React from 'react';
import {
	AppRegistry,
	StyleSheet,
	Text,
	View
} from 'react-native';
import EmojiKeyboard from 'react-native-emoji-keyboard'

export default class example extends React.PureComponent {
	constructor(props) {
		super(props)
		this.state = {
			emojis: [],
		}
	}

	render() {
		return (
			<View style={styles.container}>
				<Text style={styles.text}>{this.state.emojis.join('')}</Text>
				<EmojiKeyboard
					onEmojiPicked={emoji => this.setState({emojis: this.state.emojis.concat(emoji)})}
					onEmojiRemoved={() => this.setState({emojis: this.state.emojis.slice(0, -1)})}
				    showDeleteButton={this.state.emojis.length > 0}
				/>
			</View>
		);
	}
}

const styles = StyleSheet.create({
	container: {
		flex          : 1,
		justifyContent: 'space-between',
		alignItems    : 'center',
	},
	text     : {
		marginTop: 200,
		fontSize : 30,
	}
});

AppRegistry.registerComponent('example', () => example);
