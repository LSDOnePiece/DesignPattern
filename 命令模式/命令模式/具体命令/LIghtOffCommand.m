//
//  LIghtOffCommand.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "LIghtOffCommand.h"

@interface LIghtOffCommand()
@property(strong,nonatomic)Light *light;
@end

@implementation LIghtOffCommand

-(instancetype)initWithLight:(Light *)light{
    if (self = [super init]) {
        self.light = light;
    }
    return self;
}

-(void)execute{
    [self.light lightOFF];
}

-(void)undo{
    [self.light lightON];
}

@end
