//
//  CommandLoader.h
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandExecute.h"

typedef enum : NSUInteger {
    CommandExecuteTypeLight,
} CommandExecuteType;


@interface CommandLoader : NSObject

-(instancetype)initWithCommandExecute:(CommandExecute *)execute;

///装配命令
-(void)configureCommand:(CommandExecuteType)type;

@end
