//
//  RNEmojiPickerManager.swift
//  emojipicker
//
//  Created by Brendan Rius on 6/27/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation
import MapKit

class CustomEmojiView: ISEmojiView {
  @objc public var test: RCTBubblingEventBlock = { body in
    print(body ?? "NONE")
  }
}


extension CustomEmojiView : ISEmojiViewDelegate {
  func emojiViewDidSelectEmoji(emojiView: ISEmojiView, emoji: String) {
    print(emoji)
    self.test([
      "emoji": emoji
    ])
  }
  
  func emojiViewDidPressDeleteButton(emojiView: ISEmojiView) {
    print("delete")
    //self.test()
  }
  
}

@objc(RNEmojiPickerSwift)
class RNEmojiPickerManager : RCTViewManager {
  @objc override func view() -> UIView! {
    let keyboard = CustomEmojiView()
    keyboard.delegate = keyboard
    return keyboard
  }
}
