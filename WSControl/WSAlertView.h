//
//  WSAlertView.h
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertViewAcrionBlock)(NSInteger buttonIndex);

@interface WSAlertView : UIAlertView <UIAlertViewDelegate>

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle firstButtonTittle:(NSString *)firstButtonTittle secondButtonTittle:(NSString *)secondButtonTittle thirdButtonTittle:(NSString *)thirdButtonTittle;

@property (nonatomic, copy) AlertViewAcrionBlock actionBlock;

@end
