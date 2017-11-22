//
//  MenuItem.m
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

-(instancetype)initMenuItemWithName:(NSString *)name withDesc:(NSString *)desc withVegetarain:(NSInteger)isVege withPrice:(CGFloat)price{
    if (self == [super init]) {
        self.name = name;
        self.desc = desc;
        self.isVegetarain = isVege;
        self.price = price;
        
    }
    
    return self;
}

-(CGFloat)getPrice{
    return self.price;
}

-(NSString *)getDescription{
    return self.desc;
}

-(NSString *)getName{
    return self.name;
}

-(BOOL)isIsVegetarain{
    return self.isVegetarain;
}

-(void)print{
    NSLog(@"菜品名称：%@ | 菜品价格：%f | 菜品描述：%@ | 是否是素菜：%@" ,self.name, self.price, self.desc, self.isVegetarain ? @"是":@"不是");
}


@end
