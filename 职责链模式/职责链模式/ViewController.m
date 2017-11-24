//
//  ViewController.m
//  职责链模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "projectManagerHandler.h"
#import "depManagerHandler.h"
#import "generalManagerHandler.h"
 /*
   使多个对象都有机会处理请求，从而避免请求的发送者和接收者之间的耦合关系。将这 些对象连成一条链,并沿着这条链传递该请求，直到有一个对象处理它为止。
  
  职责链模式适用于如下几种情况：
  
  1.有多个的对象可以处理一个请求，但是具体是哪个对象处理该请求则是在运行时刻才确定。
  2.想在不明确指定接收者的情况下，向多个对象中的一个提交请求。
  3.一个请求的处理链可以动态设置
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    handler *handler1 = [projectManagerHandler new];
    handler *handler2 = [depManagerHandler new];
    handler *handler3 = [generalManagerHandler new];
    
    //设置责任链中的下一个处理对象
    handler1.successor = handler2;
    handler2.successor = handler3;
    
    [handler1 handleRequest:100];
    
    NSLog(@"----------------------------------");
    [handler1 handleRequest:700];
    
    NSLog(@"----------------------------------");
    [handler1 handleRequest:10000];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
