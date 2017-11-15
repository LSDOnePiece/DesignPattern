//
//  LightOnCommand.h
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Light.h"
#import "CommandInterface.h"
@interface LightOnCommand : NSObject<CommandInterface>
-(instancetype)initWithLight:(Light *)light;
@end
