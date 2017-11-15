//
//  ViewController.m
//  命令模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#pragma mark -- 适用于一些列有序操作，并对之前的操作有记录，支持回滚。

#import "ViewController.h"
#import "CommandLoader.h"
#import "CommandExecute.h"
@interface ViewController ()

@property(strong,nonatomic)CommandExecute *execute;

@property(strong,nonatomic)CommandLoader *loader;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CommandExecute *execute = [[CommandExecute alloc]init];
    
    CommandLoader *loader = [[CommandLoader alloc]initWithCommandExecute:execute];
    ///装配命令
    [loader configureCommand:0];
    
    self.execute = execute;
    self.loader = loader;
}

- (IBAction)onBtnClick:(UIButton *)sender {
    
    [self.execute onButtonClickWithTag:0];
}
- (IBAction)offBtnClick:(UIButton *)sender {
   
    [self.execute offButtonClickWithTag:0];
}

- (IBAction)cancelBtnClick:(UIButton *)sender {

    
    [self.execute undoButtonClick];
}
- (IBAction)allBtnClick:(UIButton *)sender {
    
    [self.execute  undoAllOperation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
