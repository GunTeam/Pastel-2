//
//  GameScene.h
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Leader.h"
#import "Follower.h"

@interface GameScene : CCNode {
    Leader *leader;
    int time;
    Boolean timeRunning;
    NSMutableArray *followerList;
    int numberToPlayWith
}

@property int score;
@property int multiplier;
@property int levelBonus;
@property NSString *matchMode;
@property int LEVEL_TIME;

-(void) update:(CCTime)delta;
-(void) winLevel;
-(void) newLevel;
-(void) toggleMatchMode;
-(void) resetTimer;
-(void) updateBySecond: (CCTime) dt;
-(Boolean) checkAllStates;

@end
