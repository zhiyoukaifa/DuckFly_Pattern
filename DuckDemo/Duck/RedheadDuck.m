//
//  RedheadDuck.m
//  DuckDemo
//
//  Created by 张三 on 2019/1/14.
//  Copyright © 2019 人人设计. All rights reserved.
//

#import "RedheadDuck.h"
#import "FlyNoWay.h"


@implementation RedheadDuck

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.flyBehavior = [[FlyNoWay alloc] init];
    }
    return self;
}

@end
