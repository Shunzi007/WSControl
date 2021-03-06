//
//  ButtonViewController.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "ButtonViewController.h"
#import "WSControl.h"

@interface ButtonViewController ()
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, assign) NSInteger number;
@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.button setAction:^{
        self.label.text = [NSString stringWithFormat:@"number=%ld", self.number ++];

    }];
    
    //
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(16, CGRectGetMaxY(self.button.frame) + 20.0, [[UIScreen mainScreen] bounds].size.width - 32, 30)];
    button.backgroundColor = [UIColor orangeColor];
    [button setTitle:@"WSButton" forState:UIControlStateNormal];
    [self.view addSubview:button];
    button.action = self.button.action;
    
  
    //
    UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeSystem];
    plusButton.frame = CGRectMake(16, CGRectGetMaxY(button.frame) + 20.0, [[UIScreen mainScreen] bounds].size.width - 32, 30);
    plusButton.backgroundColor = [UIColor cyanColor];
    [plusButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [plusButton setTitle:@"WSButton" forState:UIControlStateNormal];
    [self.view addSubview:plusButton];
    plusButton.action = self.button.action;
    
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
