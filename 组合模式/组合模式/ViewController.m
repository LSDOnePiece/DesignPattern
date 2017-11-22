//
//  ViewController.m
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "ViewController.h"
#import "MenuItem.h"
#import "Menu.h"
@interface ViewController ()

@end

@implementation ViewController

/*
 将 对 象 组 合 成 树 形 结 构 以 表 示 “ 部 分 -整 体 ” 的 层 次 结 构 。 组合模式 使 得 用 户 对 单 个 对 象 和组合对象的使用具有一致性。
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ///创建菜单项目
    MenuComponent *pancakeHouseMenu = [[Menu alloc]initMenuItemWithName:@"博饼屋菜单" withDesc:@"早餐"];
    MenuComponent *dinnerMenu = [[Menu alloc]initMenuItemWithName:@"正餐菜单" withDesc:@"午餐"];
    MenuComponent *cafeMenu = [[Menu alloc]initMenuItemWithName:@"咖啡菜单" withDesc:@"晚餐"];
    MenuComponent *dessertMenu = [[Menu alloc]initMenuItemWithName:@"甜点菜单" withDesc:@"饭后甜点"];
    MenuComponent *allMenu = [[Menu alloc]initMenuItemWithName:@"所有菜单" withDesc:@"所有菜单的组合"];
    
    [allMenu add:pancakeHouseMenu];
    [allMenu add:dinnerMenu];
    [allMenu add:cafeMenu];
    [allMenu add:dessertMenu];
    
    ///创建菜品
    MenuItem *meatItem = [[MenuItem alloc]initMenuItemWithName:@"红烧肉" withDesc:@"祖传红烧肉，肥而不腻" withVegetarain:0 withPrice:177.2f];
    MenuItem *fishItem = [[MenuItem alloc]initMenuItemWithName:@"清蒸鲈鱼" withDesc:@"新鲜味美，回味无穷" withVegetarain:0 withPrice:2332.0f];

    [dinnerMenu add:meatItem];
    [dinnerMenu add:fishItem];
    
    MenuItem *dessertItem1 = [[MenuItem alloc]initMenuItemWithName:@"清炒小白菜" withDesc:@"味美而鲜，有机绿色无污染" withVegetarain:1 withPrice:17.3f];
    MenuItem *dessertItem2 = [[MenuItem alloc]initMenuItemWithName:@"玉米排骨汤" withDesc:@"饭后一口汤，快乐似神仙" withVegetarain:1 withPrice:243.3f];
    
    [dessertMenu add:dessertItem1];
    [dessertMenu add:dessertItem2];
    
    
    ///甜点菜单添加到正餐菜单
    [dinnerMenu add:dessertMenu];
//    
//    [allMenu print];
    
    [allMenu remove:dessertItem1];
    
    [allMenu print];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
