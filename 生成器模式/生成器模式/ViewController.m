//
//  ViewController.m
//  生成器模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#pragma mark --  适用于按照一定的规则组装数据的场景

#import "ViewController.h"
#import "XMLBuilder.h"
#import "HtmlBuilder.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    XMLBuilder *xml = [[XMLBuilder alloc]initWithData:@"原始数据"];
    
    NSString *xmlProduct =  xml.buildHeader.buildBody.buildFooter.getProduct;
    
    NSLog(@"%@",xmlProduct);
    
    
    HtmlBuilder *html = [[HtmlBuilder alloc]initWithData:@"HTML数据"];
    
    NSString *htmlProduct = html.buildHeader.buildBody.buildFooter.getProduct;
    
    NSLog(@"%@",htmlProduct);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
