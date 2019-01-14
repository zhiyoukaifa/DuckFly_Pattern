//
//  ViewController.m
//  DuckDemo
//
//  Created by 张三 on 2019/1/14.
//  Copyright © 2019 人人设计. All rights reserved.
//

#import "ViewController.h"
#import "MallardDuck.h"
#import "RedheadDuck.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    /*
     1.zs20190114 故事： 不同的鸭子 对应不同的飞行行为
     2.MallardDuck 和 RedheadDuck  绿头鸭子和红头鸭子 这两种鸭子继承Duck鸭子类
     3.鸭子都有对应的飞行行为  但是飞行的具体实现是不一样的 所以抽象出来FlyBehaviorProtocol 利用多态实现统一调用fly
     4.FlyBehaviorProtocol 是飞行协议   提供一个委托方法:fly
     5.FlyWithWings 和 FlyNoWay 遵循FlyBehaviorProtocol协议  实现fly方法
     6.Duck维护一个协议对象 flyBehavior：  @property (nonatomic, strong) id<FlyBehaviorProtocol> flyBehavior;
     7.Duck 提供一个 - (void)performFly; 执行飞行行为的方法   方法内部实现： [_flyBehavior fly];
     8.MallardDuck 和 RedheadDuck  在这两种鸭子的构造函数中 定义flyBehavior 是FlyWithWings 还是FlyNoWay
     
     好处：
     1.飞行行为可以复用 以后添加新的类型的鸭子的时候 不需要在子类实现飞行方法
     2.代码复用， 如果有多种类型的鸭子 他们有不同的叫声 不同的外观 不同的飞行方式  eg:有的鸭子会飞但是不会叫 有的会叫但是不会飞   如果在子类中重写具体行为的时候 每次都需要将代码再写一遍
     3.符合设计原则：针对接口编程，而不是针对实现编程
     缺点：
     1.有新的飞行行为的时候 需要添加新的飞行类 类的数量肯定是变多的
     */
    
    
    MallardDuck *flyDuck = [[MallardDuck alloc] init];
    [flyDuck performFly];
    
    RedheadDuck *flyNowWay = [[RedheadDuck alloc] init];
    [flyNowWay performFly];
    
}


@end
