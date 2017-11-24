//
//  abstractMessage.m
//  桥接模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "abstractMessage.h"

//抽象消息类型
@implementation abstractMessage
- (instancetype)initWithImplement:(id<messageImplement>)implement
{
    self = [super init];
    if (self) {
        self.messageIm = implement;
    }
    return self;
}

-(void)send:(NSMutableString*)message{
    
}

@end
