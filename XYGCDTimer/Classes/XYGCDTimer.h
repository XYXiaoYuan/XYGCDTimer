//
//  XYGCDTimer.h
//  XYGCDTimer
//
//  Created by Bruceyuan on 2018/6/21.
//  Copyright © 2018年 664995775@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYGCDTimer : NSObject


/**
 创建一个定时器,每隔interval秒调用的方法写在task这个block中

 @param task 每隔interval秒调用的方法
 @param start 定时器开始的时间
 @param interval 定时器间隔
 @param repeats 是否重复
 @param async 是否异步执行
 @return 返回一个定时器任务名
 */
+ (NSString *)execTask:(void(^)(void))task
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;


/**
 创建一个定时器,每隔interval秒调用的方法写在交给target的selctor方法来执行

 @param target 谁来执行
 @param selector ,每隔interval秒调用的方法
 @param start 定时器开始的时间
 @param interval 定时器间隔
 @param repeats 是否重复
 @param async 是否异步执行
 @return 返回一个定时器任务名
 */
+ (NSString *)execTask:(id)target
              selector:(SEL)selector
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;


/**
 结束一个定时器任务

 @param name 定时器任务名
 */
+ (void)cancelTask:(NSString *)name;

@end
