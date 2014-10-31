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
    int NUM_COLORS;
    NSArray *POSSIBLE_COLORS[4];
    NSArray *POSSIBLE_SHAPES[4];
}

@property NSMutableDictionary *colorsToShapes;
@property NSMutableDictionary *shapesToColors;
@property NSString *currentColor;
@property NSString *currentShape;
@property int stateIndex;

-(NSString *) getCurrentColor;
-(NSString *) getCurrentShape;
-(void) changeShape;


@end
