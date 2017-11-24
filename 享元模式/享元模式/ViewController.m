//
//  ViewController.m
//  享元模式
//
//  Created by ls on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "FlyweightView.h"
#import <objc/runtime.h>
#import <malloc/malloc.h>
 /*
    运用共享技术有效地支持大量细粒度的对象。
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 使用享元模式
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    NSMutableArray *flowerList = [[NSMutableArray alloc]
                                  initWithCapacity:500];
    for (int i = 0; i < 10000; ++i)
    {
        @autoreleasepool {
            FlowerType flowerType = arc4random() % kTotalNumberOfFlowerTypes;
            //重复利用对象
            UIImageView *flowerView = [factory flowerViewWithType:flowerType];
            
            CGRect screenBounds = [[UIScreen mainScreen] bounds];
            CGFloat x = (arc4random() % (NSInteger)screenBounds.size.width);
            CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
            NSInteger minSize = 10;
            NSInteger maxSize = 50;
            CGFloat size = (arc4random() % (maxSize - minSize + 1)) + minSize;
            
            CGRect area = CGRectMake(x, y, size, size);
            //新建对象
            NSValue *key = [NSValue valueWithCGRect:area];
            //新建对象
            NSDictionary *dic =   [NSDictionary dictionaryWithObject:flowerView forKey:key];
            [flowerList addObject:dic];
            
        }
        
    }
    
    FlyweightView *view = [[FlyweightView alloc]initWithFrame:self.view.bounds];
    view.flowerList = flowerList;
    self.view = view;
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
