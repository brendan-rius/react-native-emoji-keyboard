//
//  EmojiPickerBridge.m
//  dazeapp
//
//  Created by Brendan Rius on 6/27/17.
//  Copyright © 2017 Facebook. All rights reserved.
//


#import <React/RCTViewManager.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNEmojiPickerSwift, RCTViewManager)
  RCT_EXPORT_VIEW_PROPERTY(test, RCTBubblingEventBlock)
@end
