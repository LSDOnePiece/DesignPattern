//
//  Menu.m
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "Menu.h"

@implementation Menu

-(instancetype)initMenuItemWithName:(NSString *)name withDesc:(NSString *)desc{
    
    if (self = [super init]) {
        self.name = name;
        self.desc = desc;
        self.menuComponentArr = [NSMutableArray array];
    }
    return self;
}

-(NSString *)getDescription{
    return self.desc;
}

-(NSString *)getName{
    return self.name;
}

-(void)add:(MenuComponent *)component{
    
    [self.menuComponentArr addObject:component];
   
    NSLog(@"添加%@", [component getName]);
    
}

-(void)remove:(MenuComponent *)component{
    
    NSLog(@"%@",self.menuComponentArr);
    
    [self.menuComponentArr enumerateObjectsUsingBlock:^(MenuComponent * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
       
        if (obj == component) {
            [self.menuComponentArr removeObject:component];
                NSLog(@"删除%@", [component getName]);
        }else{
            
            if ([obj isKindOfClass:[Menu class]]) {
                if ([((Menu *)obj).menuComponentArr containsObject:component]) {
                    [obj remove:component];
                    NSLog(@"删除%@", [component getName]);
                }
            }
            
        }
        
    }];
    
}

-(MenuComponent *)getChild:(NSInteger)position{
    return self.menuComponentArr[position];
}

-(void)print{
    NSLog(@"菜单名称：%@ | 菜单描述：%@ " ,self.name, self.desc);
    if(self.menuComponentArr.count){
        for (MenuComponent * component in self.menuComponentArr) {
            [component print];
        }
    }
}

@end
