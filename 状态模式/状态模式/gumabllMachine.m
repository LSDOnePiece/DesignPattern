//
//  gumabllMachine.m
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "gumabllMachine.h"
#import "noQuarterState.h"
#import "hasQUarterState.h"
#import "soldingState.h"
#import "soldOutState.h"


@implementation gumabllMachine
- (instancetype)initWithGumabllCount:(NSInteger)count
{
    self = [super init];
    if (self) {
        self.count =count;
        self.noQuarterState = [[noQuarterState alloc]initWithMachine:self];
        self.hasQuarterState = [[hasQUarterState alloc]initWithMachine:self];
        self.soldingState = [[soldingState alloc]initWithMachine:self];
        self.soldOutState = [[soldOutState alloc]initWithMachine:self];
        //初始化状态为没有硬币状态
        if (self.count > 0) self.state = self.noQuarterState;
    }
    return self;
}

//可以发现此时的四种动作方法都委托给状态类去实现了
-(void)machineInsertQuarter{
    [self.state insertQuarter];
}

-(void)machineEjectQuarter{
    [self.state ejectQuarter];
}


-(void)machinetrunCrank{
    [self.state trunCrank];
}

-(void)machineDispense{
    [self.state dispense];
}


@end
