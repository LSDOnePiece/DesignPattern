//
//  MenuComponent.m
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "MenuComponent.h"

@implementation MenuComponent

-(void)add:(MenuComponent *)component{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(void)remove:(MenuComponent *)component{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(MenuComponent *)getChild:(NSInteger)position{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(NSString *)getName{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(NSString *)getDescription{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(CGFloat)getPrice{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(BOOL)isVegetarian{
    NSString *reason = [NSString stringWithFormat:@"【%@】没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

-(void)print{
    NSString *reason = [NSString stringWithFormat:@"%@没有实现该方法",NSStringFromClass([self class])];
    @throw ([NSException exceptionWithName:@"不支持该方法" reason:reason userInfo:nil]);
}

@end
