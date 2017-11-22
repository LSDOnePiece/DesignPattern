//
//  Menu.h
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "MenuComponent.h"

@interface Menu : MenuComponent

@property(copy,nonatomic)NSString *name;
@property(copy,nonatomic)NSString *desc;

@property(strong,nonatomic)NSMutableArray<MenuComponent *> *menuComponentArr;

-(instancetype)initMenuItemWithName:(NSString *)name withDesc:(NSString *)desc;

@end
