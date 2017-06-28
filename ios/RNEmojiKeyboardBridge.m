//
//  EmojiPickerBridge.m
//  dazeapp
//
//  Created by Brendan Rius on 6/27/17.
//  Copyright © 2017 Facebook. All rights reserved.
//


#import <React/RCTBridgeModule.h>
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_MODULE(RNEmojiKeyboardSwift, RCTViewManager)
  RCT_EXPORT_VIEW_PROPERTY(onEmojiPicked, RCTDirectEventBlock)
  RCT_EXPORT_VIEW_PROPERTY(onEmojiRemoved, RCTDirectEventBlock)
  RCT_EXPORT_VIEW_PROPERTY(showDeleteButton, BOOL)
  RCT_EXPORT_VIEW_PROPERTY(bgColor, UIColor)
@end
