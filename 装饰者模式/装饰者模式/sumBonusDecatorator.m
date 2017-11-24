//
//  sumBonusDecatorator.m
//  装饰者模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "sumBonusDecatorator.h"

//累积奖金装饰器
@implementation sumBonusDecatorator

-(NSInteger)calculateSalary:(NSInteger)monthSales sumSales:(NSInteger)sumSales{
    NSInteger salary = [self.components calculateSalary:monthSales sumSales:sumSales];
    NSInteger bonus = sumSales * 0.01;
    NSLog(@"累积销售奖金：%zd", bonus);
    return salary += bonus;
}



@end
