//
//  SegmentedController.m
//  example
//
//  Created by 王顺 on 15/6/8.
//  Copyright (c) 2015年 王顺. All rights reserved.
//

#import "SegmentedController.h"
#import "WSControl.h"

@interface SegmentedController ()
@property (weak, nonatomic) IBOutlet WSSegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation SegmentedController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.segmentedControl setAction:^(NSInteger segment) {
        self.label.text = [NSString stringWithFormat:@"You has choosed button %ld", segment];
    }];
    self.segmentedControl.selectedSegmentIndex = 0;
    
    NSArray *array = [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", nil];
    WSSegmentedControl *segmentedControl = [[WSSegmentedControl alloc]initWithItems:array];
    segmentedControl.frame = CGRectMake(16, CGRectGetMaxY(self.segmentedControl.frame) + 20, [UIScreen mainScreen].bounds.size.width - 32,  40);
    [self.view addSubview:segmentedControl];
    segmentedControl.selectedSegmentIndex = 0;
    segmentedControl.action = self.segmentedControl.action;
    
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
