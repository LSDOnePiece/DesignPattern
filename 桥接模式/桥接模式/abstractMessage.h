//
//  abstractMessage.h
//  桥接模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "messageImplement.h"
@interface abstractMessage : NSObject
@property(strong,nonatomic)id<messageImplement> messageIm;

-(void)send:(NSMutableString*)message;
- (instancetype)initWithImplement:(id<messageImplement>)implement;


@end
