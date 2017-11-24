//
//  concreteComponent.m
//  装饰者模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "concreteComponent.h"

//被装饰对象，基本工资
@implementation concreteComponent
-(NSInteger)calculateSalary:(NSInteger)monthSales  sumSales:(NSInteger)sumSales{
    //基本工资8000
    return 8000;
}
@end
