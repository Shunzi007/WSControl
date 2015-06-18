//
//  UIButton+ActionBlock.m
//  example
//
//  Created by 王顺 on 15/6/18.
//  Copyright © 2015年 王顺. All rights reserved.
//

#import "UIButton+ActionBlock.h"
#import <objc/message.h>

static void *actionKey = &actionKey;

@implementation UIButton (ActionBlock)

- (void)setup {
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)action:(UIButton *)sender {
    if (sender.action) {
        sender.action();
    }
}

- (void)setAction:(void (^)(void))action {
    objc_setAssociatedObject(self, actionKey, action, OBJC_ASSOCIATION_RETAIN);
    [self setup];
}

- (void (^)(void))action {
    id act = objc_getAssociatedObject(self, actionKey);
    return act;
}

@end
