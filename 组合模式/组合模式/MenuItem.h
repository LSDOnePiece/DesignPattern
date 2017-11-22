//
//  MenuItem.h
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "MenuComponent.h"

@interface MenuItem : MenuComponent

@property(copy ,nonatomic)NSString *name;
@property(copy ,nonatomic)NSString *desc;
@property(assign,nonatomic)NSInteger isVegetarain;
@property(assign,nonatomic)CGFloat price;

-(instancetype)initMenuItemWithName:(NSString*)name withDesc:(NSString*)desc withVegetarain:(NSInteger)isVege withPrice:(CGFloat)price;

@end
