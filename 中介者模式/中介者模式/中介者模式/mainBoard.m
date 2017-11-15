//
//  mainBoard.m
//  中介者模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "mainBoard.h"

@implementation mainBoard

+(instancetype)sharedBoard{
    
    static mainBoard *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[mainBoard alloc]init];
    });
    return _instance;
}

-(void)handleData:(NSString *)data dataSource:(id)source{
    
    if ([source isKindOfClass:[driver class]]) {
        
        Cup *cup =  [Cup new];
        [cup executeData:data];
        
    }else if ([source isKindOfClass:[Cup class]]){
        
        videoCard *video = [videoCard new];
        [video executeData:data];
        
    }
    
}

@end
