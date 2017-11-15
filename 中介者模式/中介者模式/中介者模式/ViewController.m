//
//  ViewController.m
//  中介者模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#pragma mark -- 适用于多个子系统指向一个中心的场景。一个子系统都通过这个中心单例来调用其他子系统。

#import "ViewController.h"
#import "driver.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    driver *dir = [driver new];
    [dir readCD];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
