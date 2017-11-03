//
//  Dot.m
//  原型模式
//
//  Created by 神州锐达 on 2017/11/3.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "Dot.h"

@interface Dot ()
@property(nonatomic,copy)NSMutableArray *children;
@end

@implementation Dot

@synthesize color = _color;
@synthesize size = _size;
@synthesize location = _location;
@synthesize count = _count;
@synthesize lastChild = _lastChild;

-(id)initWithLocation:(CGPoint)location{
    if (self = [super init]) {
        _location = location;
    }
    return self;
}


-(NSInteger)count{
    return [self.children count];
}

-(void)addMark:(id<Mark>)mark{
    [self.children addObject:mark];
}

-(void)removeMark:(id<Mark>)mark{
    if ([self.children containsObject:mark]) {
        [self.children removeObject:mark];
    }
}

-(id<Mark>)childMarkAtIndex:(NSInteger)index{
    if (self.children.count <= index) {
        return nil;
    }
    return self.children[index];
}

-(id<Mark>)lastChild{
    return [self.children lastObject];
}


-(id)copyWithZone:(NSZone *)zone{
    
    Dot *dot = [[[self class] alloc] initWithLocation:_location];
    [dot setColor:[UIColor colorWithCGColor:[_color CGColor]]];
    [dot setSize:_size];
    for (id<Mark> mark in self.children) {
        id<Mark> childCopy = [mark copy];
        [dot addMark:childCopy];
    }
    return dot;
    
}

-(NSMutableArray *)children{
    if (_children == nil) {
        _children = [NSMutableArray array];
    }
    return _children;
}

@end
