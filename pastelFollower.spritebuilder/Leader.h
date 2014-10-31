//
//  Leader.h
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface Leader : CCSprite {
    float changeProbability;
    NSString *currentColor;
    NSString *currentShape;
    NSArray *POSSIBLE_COLORS[4];
    NSArray *POSSIBLE_SHAPES[4];
}

@property NSString *CColor;

-(void) update:(CCTime)delta;
-(NSString *) getCurrentColor;
-(NSString *) getCurrentShape;
-(void) changeToRandomColor;
-(void) changeToRandomShape;

@end
