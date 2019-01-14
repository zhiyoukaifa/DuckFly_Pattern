//
//  FlyBehaviorProtocol.h
//  DuckDemo
//
//  Created by 张三 on 2019/1/14.
//  Copyright © 2019 人人设计. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//zs20190114 定义飞行行为的协议(抽象接口)
@protocol FlyBehaviorProtocol <NSObject>

@optional

- (void)fly;

@end

NS_ASSUME_NONNULL_END
