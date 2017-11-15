//
//  XMLBuilder.h
//  生成器模式
//
//  Created by 神州锐达 on 2017/11/15.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "builder.h"
@interface XMLBuilder : NSObject<builder>

- (instancetype)initWithData:(NSString *)data;

@end
