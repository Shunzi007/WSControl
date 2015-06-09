//
//  WSButton.h
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface WSButton : UIButton

@property (nonatomic, copy) void (^action)(void);

@end
