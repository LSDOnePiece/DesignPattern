//
//  Price.h
//  策略模式
//
//  Created by ls on 2017/11/23.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "strategy.h"
@interface Price : NSObject

///策略对象
@property(strong,nonatomic)id<strategy> strategy;

-(instancetype)initWithStrategy:(id<strategy>)strategy;

-(NSInteger)quotePrice:(NSInteger)goodsPrice;

@end
