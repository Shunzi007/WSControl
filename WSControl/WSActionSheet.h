//
//  WSActionSheet.h
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ActionSheetAcrionBlock)(NSInteger buttonIndex);

@interface WSActionSheet : UIActionSheet<UIActionSheetDelegate>

- (instancetype)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle firstButtonTittle:(NSString *)firstButtonTittle secondButtonTittle:(NSString *)secondButtonTittle thirdButtonTittle:(NSString *)thirdButtonTittle;

@property (nonatomic, copy) ActionSheetAcrionBlock actionBlock;

@end
