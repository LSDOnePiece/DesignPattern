//
//  CommandExecute.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "CommandExecute.h"
#import "NoCommand.h"
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

///初始化
-(instancetype)init{
    
    if (self = [super init]) {
        
        self.onCommandArr = [NSMutableArray array];
        self.offCommandArr = [NSMutableArray array];
        self.completeCommandsArr = [NSMutableArray array];
        self.undoCommand = [[NoCommand alloc]init];
   
    }
    return self;
}

///设置添加命令
-(void)setCommandWithTag:(NSInteger)tag onCommand:(id<CommandInterface>)onCommand offCommand:(id<CommandInterface>)offCommand{
    
    self.onCommandArr[tag] = onCommand;
    
    self.offCommandArr[tag] = offCommand;
    
}

///打开命令
-(void)onButtonClickWithTag:(NSInteger)tag{
    
    [self.onCommandArr[tag] execute];
    
    self.undoCommand = self.onCommandArr[tag];
    
    [self.completeCommandsArr addObject:self.onCommandArr[tag]];
    
}
///关闭命令
-(void)offButtonClickWithTag:(NSInteger)tag{
    [self.offCommandArr[tag] execute];
    
    self.undoCommand = self.offCommandArr[tag];
    
    [self.completeCommandsArr addObject:self.offCommandArr[tag]];
}
///撤销
-(void)undoButtonClick{
     [self.undoCommand undo];
}
///全部撤销
-(void)undoAllOperation{
    
    for (id<CommandInterface> command in self.completeCommandsArr) {
        
        [command undo];
    }
}


@end






























