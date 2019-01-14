//
//  Duck.m
//  DuckDemo
//
//  Created by 张三 on 2019/1/14.
//  Copyright © 2019 人人设计. All rights reserved.
//

#import "Duck.h"

@implementation Duck
- (void)name
{
    NSLog(@"名字");
}

- (void)performFly
{
    [_flyBehavior fly];
}

@end
