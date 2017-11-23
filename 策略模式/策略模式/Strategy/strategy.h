//
//  strategy.h
//  策略模式
//
//  Created by ls on 2017/11/23.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol strategy <NSObject>

-(NSInteger)calcPrice:(NSInteger)goodsPrice;

@end

