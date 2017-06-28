//
//  EmojiPickerBridge.m
//  dazeapp
//
//  Created by Brendan Rius on 6/27/17.
//  Copyright © 2017 Facebook. All rights reserved.
//


#import <React/RCTViewManager.h>
#import <RNEmojiKeyboardFramework/RNEmojiKeyboardFramework.h>

@interface RNEmojiKeyboardManager : RCTViewManager
@end

@interface CustomEmojiKeyboard : UIView <ISEmojiViewDelegate>
    @property ISEmojiView* keyboardView;

    @property (nonatomic, copy) RCTBubblingEventBlock onEmojiPicked;
    @property (nonatomic, copy) RCTBubblingEventBlock onEmojiRemoved;
@end

@implementation CustomEmojiKeyboard

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.keyboardView = [[ISEmojiView alloc] init];
        self.keyboardView.frame = self.bounds;
        self.keyboardView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.keyboardView.delegate = self;
        [self addSubview:self.keyboardView];
    }
    return self;
}

- (void)emojiViewDidPressDeleteButtonWithEmojiView:(ISEmojiView *)emojiView {
    self.onEmojiRemoved(nil);
}

- (void)emojiViewDidSelectEmojiWithEmojiView:(ISEmojiView *)emojiView emoji:(NSString *)emoji {
    self.onEmojiPicked(@{@"emoji": emoji});
}

- (void)setBgColor:(UIColor *)color {
    self.keyboardView.collectionView.backgroundColor = color;
}

- (void)setShowDeleteButton:(bool)showButton {
    [self.keyboardView.deleteButton setHidden:!showButton];
}

@end

@implementation RNEmojiKeyboardManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[CustomEmojiKeyboard alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(onEmojiPicked, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onEmojiRemoved, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(showDeleteButton, BOOL)
RCT_EXPORT_VIEW_PROPERTY(bgColor, UIColor)


@end
