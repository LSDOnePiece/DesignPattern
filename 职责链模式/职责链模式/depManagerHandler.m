//
//  depManagerHandler.m
//  职责链模式
//
//  Created by ls on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import "depManagerHandler.h"

@implementation depManagerHandler

-(void)handleRequest:(NSInteger)fee{
    if (fee > 500 && fee < 1000) {
        NSLog(@"部门经理同意了费用申请");
    }else{
        if (self.successor)
            NSLog(@"部门经理没有权限批准，转到总经理处理");
        [self.successor handleRequest:fee];
    }
}



@end
