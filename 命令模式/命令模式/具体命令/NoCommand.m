//
//  NoCommand.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "NoCommand.h"

@implementation NoCommand

-(void)execute{
    NSLog(@"该插槽没有安装命令");
}

-(void)undo{
     NSLog(@"命令被撤销");
}


@end
