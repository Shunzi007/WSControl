//
//  WSButton.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "WSButton.h"

@implementation WSButton
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

+ (id)buttonWithType:(UIButtonType)buttonType {
    WSButton *button = [super buttonWithType:buttonType];
    if (button) {
        [button addTarget:button action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    }
    return button;
}


- (void)awakeFromNib
{
    [self setup];
}

- (void)setup {
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)action:(WSButton *)sender {
    if (sender.action) {
        sender.action();
    }
}

@end
