//
//  WSSegmentedControl.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "WSSegmentedControl.h"

@implementation WSSegmentedControl

- (void)awakeFromNib {
    [self setUp];
}

- (instancetype)initWithItems:(NSArray *)items {
    self = [super initWithItems:items];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)setUp {
    [self addTarget:self action:@selector(action:) forControlEvents:UIControlEventValueChanged];
}

- (void)action:(WSSegmentedControl *)sender {
    if (sender.actionBlock) {
        sender.actionBlock(sender.selectedSegmentIndex);
    }
}

@end
