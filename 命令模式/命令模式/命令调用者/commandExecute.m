//
//  CommandExecute.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "CommandExecute.h"

@interface CommandExecute()
///打开命令数组
@property(nonatomic,strong)NSMutableArray<id<CommandInterface>> *onCommandArr;
///关闭命令数组
@property(nonatomic,strong)NSMutableArray<id<CommandInterface>> *offCommandArr;
///最近的撤销命令
@property(nonatomic,strong)id<CommandInterface> undoCommand;
///结束命令
@property(nonatomic,strong)NSMutableArray <id<CommandInterface>> *completeCommandsArr;

@end

@implementation CommandExecute




@end






























