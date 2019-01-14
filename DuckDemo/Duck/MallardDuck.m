//
//  MallardDuck.m
//  DuckDemo
//
//  Created by 张三 on 2019/1/14.
//  Copyright © 2019 人人设计. All rights reserved.
//

#import "MallardDuck.h"
#import "FlyWithWings.h"
@implementation MallardDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.flyBehavior = [[FlyWithWings alloc] init];
    }
    return self;
}

@end
