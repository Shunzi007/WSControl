//
//  UIAlertView+ActionBlock.h
//  example
//
//  Created by 王顺 on 15/6/18.
//  Copyright © 2015年 王顺. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (ActionBlock)<UIAlertViewDelegate>

@property (nonatomic, copy) void (^action)(NSInteger);

- (void)setAction:(void (^)(NSInteger buttonIndex))action;

@end
