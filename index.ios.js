/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React from 'react';
import {
	AppRegistry,
	StyleSheet, Text,
	View,
} from 'react-native';
import EmojiKeyboard from './EmojiKeyboard'

export default class emojipicker extends React.PureComponent {
	constructor(props) {
		super(props)
		this.state = {
			emojis: [],
		}
	}

	render() {
		return (
			<View style={styles.container}>
				<Text>{this.state.emojis.join('')}</Text>
				<EmojiKeyboard onEmojiPicked={e => this.setState({emojis: this.state.emojis.concat(e)})}
				               onEmojiRemoved={e => this.setState({emojis: this.state.emojis.slice(0, -1)})}
				               showDeleteButton={this.state.emojis.length > 0}/>
			</View>
		);
	}
}

const styles = StyleSheet.create({
	container: {
		flex           : 1,
		justifyContent : 'space-between',
		backgroundColor: 'blue',
	},
});

AppRegistry.registerComponent('emojipicker', () => emojipicker);
