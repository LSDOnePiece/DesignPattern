//
//  driver.m
//  中介者模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "driver.h"
#import "mainBoard.h"
@implementation driver

-(void)readCD{
    
    NSLog(@"开始读取CD");
    
    [[mainBoard sharedBoard] handleData:@"开始读取CD" dataSource:self];
    
}

@end
