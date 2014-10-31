//
//  Follower.h
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Follower : CCSprite {
    NSMutableDictionary *colorsToShapes;
    NSMutableDictionary *shapesToColors;
    NSString *currentColor;
    NSString *currentShape;
}

+(NSString *) getCurrentColor;
+(NSString *) getCurrentShape;
+(NSMutableString *) changeShape;


@end
