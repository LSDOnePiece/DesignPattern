//
//  noQuarterState.m
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "noQuarterState.h"

@implementation noQuarterState

-(instancetype)initWithMachine:(gumabllMachine *)machine{
    if (self = [super init]) {
        
        self.machine = machine;
    }
    return self;
}


-(void)insertQuarter{
    NSLog(@"你塞入了一枚硬币");
    self.machine.state = self.machine.hasQuarterState;
}

-(void)ejectQuarter{
    NSLog(@"你没有塞入一枚硬币，不能退钱");
}


-(void)trunCrank{
    NSLog(@"你按了购买按钮，但是你没有塞入硬币，请塞入硬币");
    
}
-(void)dispense{
    NSLog(@"你要买一个糖果，但是你没有塞入硬币，请先付款");
    
}



@end
