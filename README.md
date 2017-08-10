# Emojis Keyboard for React Native

Based on [ISEmojiView](https://github.com/isaced/ISEmojiView).
Only works on iOS.

## Installation


 * `yarn add react-native-emoji-keyboard` or `npm install --save react-native-emoji-keyboard`
 * `react-native link react-native-emoji-keyboard`
 * In XCode, TO you your project settings and in the "General" tab. Click on the "+" in the "Linked Frameworks and Libraries" section. Locate and add "RNEmojiKeyboardFramework.framework"
 * In XCode, go to your build settings and set "Always Embed Swift Standard Libraries" to "YES"
 * Clean the Project (Product -> Clean)
 * Build and run your project

## Usage

```jsx harmony
<View style={styles.container}>
    <Text>{this.state.emojis.join('')}</Text>
    <EmojiKeyboard onEmojiPicked={e => this.setState({emojis: this.state.emojis.concat(e)})}
                   onEmojiRemoved={e => this.setState({emojis: this.state.emojis.slice(0, -1)})}
                   showDeleteButton={this.state.emojis.length > 0}/>
</View>
```

