//
//  WSAlertView.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "WSAlertView.h"

@implementation WSAlertView
- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle firstButtonTittle:(NSString *)firstButtonTittle secondButtonTittle:(NSString *)secondButtonTittle thirdButtonTittle:(NSString *)thirdButtonTittle {
    self = [super initWithTitle:title
                        message:message
                       delegate:self
              cancelButtonTitle:cancelButtonTitle
              otherButtonTitles:firstButtonTittle, secondButtonTittle, thirdButtonTittle, nil];
    if (self) {
        self.delegate = self;
    }
    return self;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.action) {
        self.action(buttonIndex);
    }
}

@end
