//
//  WSSegmentedControl.h
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface WSSegmentedControl : UISegmentedControl

@property (nonatomic, copy) void (^action)(NSInteger);
- (void)setAction:(void (^)(NSInteger segment))action;

@end
