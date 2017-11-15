//
//  XMLBuilder.m
//  生成器模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "XMLBuilder.h"

@interface XMLBuilder ()

@property(strong,nonatomic)NSMutableString *data;

@end

@implementation XMLBuilder

- (instancetype)initWithData:(NSString *)data{
    
    if (self = [super init]) {
    
      self.data = [[NSMutableString alloc]initWithString:data];
    }
    return self;
}

-(instancetype)buildHeader{
    
    [self.data insertString:@"xmlHeader" atIndex:0];
    
    return self;
    
}

-(instancetype)buildBody{
    
    [self.data appendString:@"xmlBody"];
    
    return self;
}

-(instancetype)buildFooter{
    
    [self.data appendString:@"xmlFooter"];
    
    return self;
}

-(NSString *)getProduct{
    return self.data;
}

@end
