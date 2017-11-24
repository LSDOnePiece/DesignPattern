//
//  messageImplement.h
//  桥接模式
//
//  Created by 神州锐达 on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol messageImplement <NSObject>

-(void)sendMessage:(NSString *)message;

@end
