//
//  Mark.h
//  原型模式
//
//  Created by 神州锐达 on 2017/11/3.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Mark <NSObject>

@optional
@property(strong,nonatomic)UIColor *color;
@property(assign,nonatomic)CGFloat size;
@property(assign,nonatomic)CGPoint location;
@property(assign,nonatomic)NSInteger count;
@property(strong,nonatomic)id<Mark> lastChild;


-(id)initWithLocation:(CGPoint)location;
-(void)addMark:(id<Mark>)mark;
-(void)removeMark:(id<Mark>)mark;
-(id<Mark>)childMarkAtIndex:(NSInteger)index;
-(id)copy;

@end
