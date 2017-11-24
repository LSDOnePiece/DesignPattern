//
//  ViewController.m
//  状态模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "gumabllMachine.h"

 /*
   允许一个对象在其内部状态改变时改变它的行为。对象看起来似乎修改了它的类。
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    gumabllMachine *machine = [[gumabllMachine alloc]initWithGumabllCount:2];
    [machine machineInsertQuarter];
    [machine machinetrunCrank];
    [machine machineDispense];
    [machine machineEjectQuarter];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
