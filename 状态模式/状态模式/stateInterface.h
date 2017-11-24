//
//  stateInterface.h
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol stateInterface <NSObject>

-(void)insertQuarter;
-(void)ejectQuarter;
-(void)trunCrank;
-(void)dispense;

@end
