//
//  XYGCDTimerViewController.m
//  GCDTimer_Example
//
//  Created by 袁小荣 on 2018/7/10.
//  Copyright © 2018年 664995775@qq.com. All rights reserved.
//

#import "XYGCDTimerViewController.h"
#import "XYGCDTimer.h"

@interface XYGCDTimerViewController ()
@property (copy, nonatomic) NSString *task;
@property (nonatomic, assign) NSInteger seconds;
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
    self.task = [XYGCDTimer execTask:self
                         selector:@selector(doTask)
                            start:0.0
                         interval:1.0
                          repeats:YES
                            async:NO];
}

- (void)doTask
{
    if (self.seconds >= 0) {
        NSInteger max = 5;
        if (self.seconds >= max) {
            [XYGCDTimer cancelTask:self.task];
            NSLog(@"最长秒数%zd秒到了", max);
            return;
        } else {
            self.seconds += 1;
        }
    }
    NSLog(@"doTask - %@ 当前秒数%zd", [NSThread currentThread], self.seconds);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [XYGCDTimer cancelTask:self.task];
    NSLog(@"停止定时器");
}


@end
