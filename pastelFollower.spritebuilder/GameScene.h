//
//  GameScene.h
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface GameScene : CCNode {
    
}

@property int score;
@property int multiplier;
@property int levelBonus;

-(void) update:(CCTime)delta;
-(void) winLevel:(int)timeLeft;
-(void) newLevel;
@end
