//
//  UISegmentedControl+ActionBlock.m
//  example
//
//  Created by 王顺 on 15/6/18.
//  Copyright © 2015年 王顺. All rights reserved.
//

#import "UISegmentedControl+ActionBlock.h"
#import <objc/message.h>

static void *actionKey = &actionKey;

@implementation UISegmentedControl (ActionBlock)

- (void)setup {
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventValueChanged];
}

- (void)action:(UISegmentedControl *)sender {
    if (sender.action) {
        sender.action(sender.selectedSegmentIndex);
    }
}

- (void)setAction:(void (^)(NSInteger))action {
    objc_setAssociatedObject(self, actionKey, action, OBJC_ASSOCIATION_RETAIN);
    [self setup];
}

- (void (^)(NSInteger))action {
    id act = objc_getAssociatedObject(self, actionKey);
    return act;
}


@end
