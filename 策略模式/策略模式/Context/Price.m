//
//  Price.m
//  策略模式
//
//  Created by ls on 2017/11/23.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "Price.h"

@implementation Price

-(instancetype)initWithStrategy:(id<strategy>)strategy{
    if (self = [super init]) {
        self.strategy = strategy;
    }
    return self;
}

-(NSInteger)quotePrice:(NSInteger)goodsPrice{
    
    return [self.strategy calcPrice:goodsPrice];
}


@end
