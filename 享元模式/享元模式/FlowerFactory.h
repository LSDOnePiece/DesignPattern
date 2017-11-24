//
//  FlowerFactory.h
//  享元模式
//
//  Created by ls on 2017/11/24.
//  Copyright © 2017年 onePiece. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum
{
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberOfFlowerTypes
} FlowerType;

@interface FlowerFactory : NSObject
{
@private
    NSMutableDictionary *flowerPool_;
}
- (UIImageView *) flowerViewWithType:(FlowerType)type;


@end
