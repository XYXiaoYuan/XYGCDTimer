//
//  XYViewController.m
//  XYGCDTimer
//
//  Created by 664995775@qq.com on 07/10/2018.
//  Copyright (c) 2018 664995775@qq.com. All rights reserved.
//

#import "XYViewController.h"
#import "XYGCDTimerViewController.h"

@interface XYViewController ()

@end

@implementation XYViewController
- (IBAction)toXYGCDTimerVC {
    XYGCDTimerViewController *vc = [[XYGCDTimerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
