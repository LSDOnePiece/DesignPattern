//
//  component.h
//  装饰者模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
//定义抽象基类
/*
 先定义一个抽象基类，工资类和奖金计算方式类都继承自这个类，该类定义了一个公开接口，用于计算奖金
 */
@interface component : NSObject

-(NSInteger)calculateSalary:(NSInteger)monthSales  sumSales:(NSInteger)sumSales;

@end
