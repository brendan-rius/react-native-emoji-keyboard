/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, {Component} from 'react';
import {
	AppRegistry,
	StyleSheet,
	View,
	AlertIOS,
	requireNativeComponent
} from 'react-native';

const Emoji = requireNativeComponent('RNEmojiPickerSwift', null)

export default class emojipicker extends Component {
	render() {
		return (
			<View style={styles.container}>
				<Emoji style={{backgroundColor: 'red', alignItems: 'center', justifyContent: 'center'}}
				       test={() => AlertIOS.alert('hello')}/>
			</View>
		);
	}
}

const styles = StyleSheet.create({
	container: {
		flex           : 1,
		justifyContent : 'center',
		alignItems     : 'center',
		backgroundColor: 'blue',
	},
});

AppRegistry.registerComponent('emojipicker', () => emojipicker);
