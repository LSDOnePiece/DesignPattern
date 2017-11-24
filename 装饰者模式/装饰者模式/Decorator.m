//
//  Decorator.m
//  装饰者模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator
- (instancetype)initWithComponet:(component *)component
{
    self = [super init];
    if (self) {
        self.components = component;
    }
    return self;
}

-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales{
    return [self.components calculateSalary:monthSales sumSales:sumSales];
}


@end
