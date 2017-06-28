//
//  RNEmojiPickerManager.swift
//  emojipicker
//
//  Created by Brendan Rius on 6/27/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation

class CustomEmojiView: ISEmojiView {
  var onEmojiPicked: RCTDirectEventBlock!
  var onEmojiRemoved: RCTDirectEventBlock!
}


extension CustomEmojiView : ISEmojiViewDelegate {
  func emojiViewDidSelectEmoji(emojiView: ISEmojiView, emoji: String) {
    self.onEmojiPicked([
      "emoji": emoji
    ])
  }
  
  func emojiViewDidPressDeleteButton(emojiView: ISEmojiView) {
    self.onEmojiRemoved(nil)
  }
}

@objc(RNEmojiKeyboardSwift)
class RNEmojiKeyboardManager : RCTViewManager {
  @objc override func view() -> UIView! {
    let keyboard = CustomEmojiView()
    keyboard.delegate = keyboard
    return keyboard
  }
}
