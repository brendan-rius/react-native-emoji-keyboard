# Emojis Keyboard for React Native

Based on [ISEmojiView](https://github.com/isaced/ISEmojiView).
Only works on iOS.

## Installation

```
npm install --save react-native-emoji-keyboard
```

## Usage

```jsx harmony
<View style={styles.container}>
    <Text>{this.state.emojis.join('')}</Text>
    <EmojiKeyboard onEmojiPicked={e => this.setState({emojis: this.state.emojis.concat(e)})}
                   onEmojiRemoved={e => this.setState({emojis: this.state.emojis.slice(0, -1)})}
                   showDeleteButton={this.state.emojis.length > 0}/>
</View>
```

