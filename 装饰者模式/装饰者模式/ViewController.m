//
//  ViewController.m
//  装饰者模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "concreteComponent.h"
#import "monthBonusDecorator.h"
#import "sumBonusDecatorator.h"
#import "groupBonusDecorator.h"
 /*
   动态地给一个对象添加一些额外的职责。就增加功能来说, 装饰模式比生成子类更为灵活。
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //基本工资，被装饰对象
    component *c1 = [concreteComponent new];
    
    //装饰器
    Decorator *d1 = [[monthBonusDecorator alloc]initWithComponet:c1];
    Decorator *d2 = [[sumBonusDecatorator alloc]initWithComponet:d1];
    NSInteger salary1 = [d2 calculateSalary:10000 sumSales:12212];
    NSLog(@"\n奖金组合方式：当月销售奖金 + 累积销售奖金 \n 总工资 = %zd", salary1);
    
    NSLog(@"\n=============================================================================");
    
    Decorator *d3 = [[monthBonusDecorator alloc]initWithComponet:c1];
    Decorator *d4 = [[sumBonusDecatorator alloc]initWithComponet:d3];
    Decorator *d5 = [[groupBonusDecorator alloc]initWithComponet:d4];
    NSInteger salary2 = [d5 calculateSalary:12100 sumSales:12232];
    NSLog(@"\n奖金组合方式：当月销售奖金 + 累积销售奖金 + 团队奖金 \n 总工资 = %zd", salary2);
    
    
    NSLog(@"\n=============================================================================");
    
    Decorator *d6 = [[monthBonusDecorator alloc]initWithComponet:c1];
    Decorator *d7 = [[groupBonusDecorator alloc]initWithComponet:d6];
    NSInteger salary3 = [d7 calculateSalary:23111 sumSales:231111];
    NSLog(@"\n奖金组合方式：当月销售奖金 + 团队奖金 \n 总工资 = %zd", salary3);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
