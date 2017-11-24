//
//  monthBonusDecorator.m
//  装饰者模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "monthBonusDecorator.h"

//每月销售奖金装饰器
@implementation monthBonusDecorator

-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales{
    NSInteger salary = [self.components calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = monthSales * 0.03;
    NSLog(@"当月销售奖金：%zd", bonus);
    return salary += bonus;
}



@end
