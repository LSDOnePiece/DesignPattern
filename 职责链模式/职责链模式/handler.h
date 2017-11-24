//
//  handler.h
//  职责链模式
//
//  Created by ls on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface handler : NSObject
@property(strong,nonatomic)handler *successor;

-(void)handleRequest:(NSInteger)fee;
@end
