//
//  Duck.h
//  DuckDemo
//
//  Created by 张三 on 2019/1/14.
//  Copyright © 2019 人人设计. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyBehaviorProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Duck : NSObject

@property (nonatomic, strong) id<FlyBehaviorProtocol> flyBehavior;


//zs20190114 所有鸭子 都有名字
- (void)name;

- (void)performFly;


@end

NS_ASSUME_NONNULL_END
