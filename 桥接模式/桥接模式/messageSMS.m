//
//  messageSMS.m
//  桥接模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "messageSMS.h"

///具体的消息发送方式

@implementation messageSMS

-(void)sendMessage:(NSString *)message{
    NSLog(@"使用SMS消息方式发送消息，消息内容：%@", message);
}

@end
