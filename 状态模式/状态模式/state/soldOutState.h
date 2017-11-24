//
//  soldOutState.h
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stateInterface.h"
#import "gumabllMachine.h"

//糖果售罄的状态
@interface soldOutState : NSObject<stateInterface>

@property(strong,nonatomic)gumabllMachine *machine;
- (instancetype)initWithMachine:(gumabllMachine *)machine;

@end
