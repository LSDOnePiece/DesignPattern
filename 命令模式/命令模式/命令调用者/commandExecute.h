//
//  CommandExecute.h
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandInterface.h"
@interface CommandExecute : NSObject

@property(strong,nonatomic)id<CommandInterface> command;

///打开命令
-(void)onButtonClickWithTag:(NSInteger)tag;
///关闭命令
-(void)offButtonClickWithTag:(NSInteger)tag;
///撤销
-(void)undoButtonClick;
///全部撤销
-(void)undoAllOperation;

///设置命令
-(void)setCommandWithTag:(NSInteger)tag onCommand:(id<CommandInterface>)onCommand offCommand:(id<CommandInterface>)offCommand;


@end
