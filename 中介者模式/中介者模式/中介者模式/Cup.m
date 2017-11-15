//
//  Cup.m
//  中介者模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "Cup.h"
#import "mainBoard.h"
@implementation Cup

-(void)executeData:(NSString *)data{
    
    NSLog(@"经过cpu处理");
    
    [[mainBoard sharedBoard] handleData:@"经过cpu处理" dataSource:self];
    
}

@end
