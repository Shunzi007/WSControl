//
//  AlertViewController.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "AlertViewController.h"
#import "WSControl.h"

@interface AlertViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation AlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button setAction:^{
        WSAlertView *alert = [[WSAlertView alloc] initWithTitle:@"Alert!"
                                                        message:@"Please choose one of the buttons"
                                              cancelButtonTitle:@"Cancel"
                                              firstButtonTittle:@"1"
                                             secondButtonTittle:@"2"
                                              thirdButtonTittle:nil];
        
        [alert setAction:^(NSInteger buttonIndex) {
            self.label.text = [NSString stringWithFormat:@"You has Choosed button %ld", buttonIndex];

        }];
        [alert show];

    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
