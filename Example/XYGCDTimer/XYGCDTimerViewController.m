//
//  XYGCDTimerViewController.m
//  GCDTimer_Example
//
//  Created by 袁小荣 on 2018/7/10.
//  Copyright © 2018年 664995775@qq.com. All rights reserved.
//

#import "XYGCDTimerViewController.h"
#import <XYGCDTimer/XYGCDTimer.h>

@interface XYGCDTimerViewController ()
@property (strong, nonatomic) dispatch_source_t timer;
@property (copy, nonatomic) NSString *task;

@end

@implementation XYGCDTimerViewController

- (void)dealloc {

    NSLog(@"%@控制器被销毁了",[self class]);
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"GCD定时器";

    // 接口设计
    self.task = [GCDTimer execTask:self
                         selector:@selector(doTask)
                            start:2.0
                         interval:1.0
                          repeats:YES
                            async:NO];
}

- (void)doTask
{
    NSLog(@"doTask - %@", [NSThread currentThread]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [GCDTimer cancelTask:self.task];
    NSLog(@"停止定时器");
}


@end
