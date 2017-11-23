//
//  ViewController.m
//  策略模式
//
//  Created by ls on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "NormalStrategy.h"
#import "discountStrategy.h"
#import "FestivalStrategy.h"
#import "Price.h"
/*
 定义一系列算法，把它们一个个的封装起来，并且使他们可以相互替换。策略模式使得算法可独立于使用它的客户端而变化。
 */
@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<strategy> normalStrategy = [[NormalStrategy alloc]init];
    
    Price *quote = [[Price alloc]initWithStrategy:normalStrategy];
    
    NSInteger quotePrice = [quote quotePrice:1000];
    
    NSLog(@"正常价格:%zd",quotePrice);
    
    
    id<strategy> discountStr = [discountStrategy new];
    Price *disPrice = [[Price alloc]initWithStrategy:discountStr];
    NSInteger quoteDisPrice = [disPrice quotePrice:1000];
    
    NSLog(@"折扣价格：%zd",quoteDisPrice);
    
    
    id<strategy> fesStr = [FestivalStrategy new];
    Price *fesPrice = [[Price alloc]initWithStrategy:fesStr];
    NSInteger festivalPrice = [fesPrice quotePrice:1000];
    
    NSLog(@"节日价格：%zd",festivalPrice);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
