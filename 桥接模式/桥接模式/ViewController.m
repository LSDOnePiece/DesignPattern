//
//  ViewController.m
//  桥接模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"

#import "commonMessage.h"
#import "audioMessage.h"

#import "messageSMS.h"
#import "messageMobile.h"
 /*
   将抽象部分与它的实现部分分离,使它们都可以独立地变化。
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    messageSMS *sms = [messageSMS new];
    
    messageMobile *mobile = [messageMobile new];
    
    commonMessage *common = [[commonMessage alloc]initWithImplement:sms];
   
    audioMessage *audio = [[audioMessage alloc]initWithImplement:mobile];
    
    
    NSMutableString *str = [[NSMutableString alloc]initWithString:@"一条新消息"];
    
    [common send:str];
    
    [audio send:str];

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
