//
//  soldOutState.m
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "soldOutState.h"

@implementation soldOutState
- (instancetype)initWithMachine:(gumabllMachine *)machine
{
    self = [super init];
    if (self) {
        self.machine = machine;
    }
    return self;
}

-(void)insertQuarter{
    NSLog(@"没有糖果啦，不要投币，请下次再来");
}

-(void)ejectQuarter{
    NSLog(@"即将为你退款...");
    
}


-(void)trunCrank{
    NSLog(@"没有糖果哦");
    
}
-(void)dispense{
    NSLog(@"没有糖果啦");
}


@end
