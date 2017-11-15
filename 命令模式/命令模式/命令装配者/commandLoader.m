//
//  CommandLoader.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "CommandLoader.h"
#import "Light.h"
#import "LightOnCommand.h"
#import "LIghtOffCommand.h"
@interface CommandLoader()

@property(strong,nonatomic)CommandExecute *execute;

@property(strong,nonatomic)NSArray *completedCommandsArr;

@end

@implementation CommandLoader


-(instancetype)initWithCommandExecute:(CommandExecute *)execute{
    
    
    if (self = [super init]) {
        self.execute = execute;
    }
    return self;
}

///装配命令
-(void)configureCommand:(CommandExecuteType)type{
    
    Light *light = [Light new];
    
    LightOnCommand *lightON = [[LightOnCommand alloc]initWithLight:light];
    LIghtOffCommand *lightOFF = [[LIghtOffCommand alloc]initWithLight:light];
    
    switch (type) {
        case 0:
        {
        [self.execute setCommandWithTag:type onCommand:lightON offCommand:lightOFF];
        }
            break;
            
        default:
            break;
    }
   
    self.completedCommandsArr = @[lightON,lightOFF];
    
}


@end
