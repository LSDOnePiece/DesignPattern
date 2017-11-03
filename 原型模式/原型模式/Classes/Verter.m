//
//  Verter.m
//  原型模式
//
//  Created by 神州锐达 on 2017/11/3.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "Verter.h"

@implementation Verter

@synthesize location = _location;

-(id)initWithLocation:(CGPoint)location{
    if (self = [super init]) {
        _location = location;
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    
    Verter *verter = [[[self class] alloc] initWithLocation:_location];
    return verter;
}




@end
