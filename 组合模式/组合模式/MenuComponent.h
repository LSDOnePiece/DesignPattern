//
//  MenuComponent.h
//  组合模式
//
//  Created by 神州锐达 on 2017/11/22.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MenuComponent : NSObject

-(void)add:(MenuComponent *)component;
-(void)remove:(MenuComponent *)component;
-(MenuComponent*)getChild:(NSInteger)position;
-(NSString*)getName;
-(NSString*)getDescription;
-(CGFloat)getPrice;
-(BOOL)isVegetarian;
-(void)print;

@end
