//
//  UIAlertView+ActionBlock.m
//  example
//
//  Created by 王顺 on 15/6/18.
//  Copyright © 2015年 王顺. All rights reserved.
//

#import "UIAlertView+ActionBlock.h"
#import <objc/message.h>

static void *actionKey = &actionKey;

@implementation UIAlertView (ActionBlock)
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (self.action) {
        self.action(buttonIndex);
    }
}

- (void (^)(NSInteger))action {
    id act = objc_getAssociatedObject(self, actionKey);
    return act;
}

- (void)setAction:(void (^)(NSInteger))action {
    objc_setAssociatedObject(self, actionKey, action, OBJC_ASSOCIATION_RETAIN);
    if (self) {
        self.delegate = self;
    }
}

@end
