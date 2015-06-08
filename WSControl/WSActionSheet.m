//
//  WSActionSheet.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "WSActionSheet.h"

@implementation WSActionSheet

- (instancetype)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle firstButtonTittle:(NSString *)firstButtonTittle secondButtonTittle:(NSString *)secondButtonTittle thirdButtonTittle:(NSString *)thirdButtonTittle {
    
    self = [super initWithTitle:title
                       delegate:self
              cancelButtonTitle:cancelButtonTitle
         destructiveButtonTitle:destructiveButtonTitle
              otherButtonTitles:firstButtonTittle, secondButtonTittle, thirdButtonTittle, nil];
    
    if (self) {
        self.delegate = self;
    }
    
    return self;
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    if (self.actionBlock) {
        self.actionBlock(buttonIndex);
    }
}

@end
