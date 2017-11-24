//
//  FlowerView.m
//  享元模式
//
//  Created by ls on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "FlowerView.h"

///创建享元

@implementation FlowerView

- (void) drawRect:(CGRect)rect
{
    [self.image drawInRect:rect];
}

@end
