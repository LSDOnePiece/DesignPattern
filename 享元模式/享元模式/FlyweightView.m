//
//  FlyweightView.m
//  享元模式
//
//  Created by ls on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "FlyweightView.h"
#import "FlowerView.h"
@implementation FlyweightView

extern NSString *FlowerObjectKey, *FlowerLocationKey;


- (void)drawRect:(CGRect)rect
{
    for (NSDictionary *dic in self.flowerList)
    {
        
        NSValue *key = (NSValue *)[dic allKeys][0];
        FlowerView *flowerView = (FlowerView *)[dic allValues][0];
        CGRect area = [key CGRectValue];
        [flowerView drawRect:area];
    }
    
}


@end
