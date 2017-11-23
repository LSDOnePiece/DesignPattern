//
//  discountStrategy.m
//  策略模式
//
//  Created by ls on 2017/11/23.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "discountStrategy.h"

@implementation discountStrategy

-(NSInteger)calcPrice:(NSInteger)goodsPrice{
    return goodsPrice * 0.75;
}

@end
