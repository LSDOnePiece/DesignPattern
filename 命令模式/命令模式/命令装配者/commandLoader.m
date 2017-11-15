//
//  CommandLoader.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "CommandLoader.h"

@interface CommandLoader()

@property(strong,nonatomic)CommandExecute *execute;

@end

@implementation CommandLoader


-(instancetype)initWithCommandExecute:(CommandExecute *)execute{
    
    
    if (self = [super init]) {
        self.execute = execute;
        
        [self configureCommand];
    }
    return self;
}

///装配命令
-(void)configureCommand{
    
    
}


@end
