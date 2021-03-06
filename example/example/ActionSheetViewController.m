//
//  ActionSheetViewController.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "ActionSheetViewController.h"
#import "WSControl.h"

@interface ActionSheetViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ActionSheetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.button.action = ^() {
            };
    [self.button setAction:^{
        UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Action!"
                                                                 delegate:nil
                                                        cancelButtonTitle:@"Cancel"
                                                   destructiveButtonTitle:@"0"
                                                        otherButtonTitles:@"1", @"2", @"3", nil];
        [actionSheet setAction:^(NSInteger buttonIndex) {
            self.label.text = [NSString stringWithFormat:@"You has choosed button %ld", buttonIndex];
            NSString *identifier = [NSString stringWithFormat:@"show_%ld", buttonIndex];
            if (buttonIndex <= 3) {
                [self performSegueWithIdentifier:identifier sender:[NSString stringWithFormat:@"%ld", buttonIndex]];
                
            }

        }];
        [actionSheet showInView:self.view];

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([sender isKindOfClass:[NSString class]]) {
        [segue.destinationViewController setValue:sender forKey:@"title"];
    }
}


@end
