//
//  gumabllMachine.h
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stateInterface.h"
@interface gumabllMachine : NSObject

-(void)setState:(id<stateInterface>)state;
@property(strong,nonatomic)id<stateInterface> state;
@property(strong,nonatomic)id<stateInterface> soldOutState;
@property(strong,nonatomic)id<stateInterface> noQuarterState;
@property(strong,nonatomic)id<stateInterface> hasQuarterState;
@property(strong,nonatomic)id<stateInterface> soldingState;
@property(assign,nonatomic)NSInteger count;

- (instancetype)initWithGumabllCount:(NSInteger)count;
-(void)machineInsertQuarter;
-(void)machineEjectQuarter;
-(void)machinetrunCrank;
-(void)machineDispense;


@end
