//
//  commonMessage.m
//  桥接模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "commonMessage.h"

//具体消息类型
@implementation commonMessage

-(void)send:(NSMutableString *)message{
    [message insertString:@"【普通消息：" atIndex:0];
    [message appendString:@"】"];
    [self.messageIm sendMessage:message];
}

@end
