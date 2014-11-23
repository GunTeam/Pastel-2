//
//  GameScene.m
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "GameScene.h"


@implementation GameScene
-(void) didLoadFromCCB {
    CCTexture *texture = [CCTexture textureWithFile:@"grossini_dance_atlas.png"];
    NSMutableArray *frames = [NSMutableArray array];
    
    int frameCount = 0; // taken from the getset example
    for (int y = 0; y < 3; y++) {
        for (int x = 0; x < 5; x++) {
            CCSpriteFrame *frame = [CCSpriteFrame frameWithTexture:texture rectInPixels:CGRectMake(x*85, y*121, 85, 121) rotated:NO offset:CGPointZero originalSize:CGSizeMake(512, 512)];
            [frames addObject:frame];
            frameCount++;
            if (frameCount == 14) break;
        }
    }
    self.LEVEL_TIME = 300; //each level will last this many seconds
    time = self.LEVEL_TIME; //start out the first level
    
    self.score = 0;
    self.multiplier = 1;
    self.levelBonus = 100;
    self.matchMode = @"color";
    
    leader = (Leader *) [CCBReader load:@"Leader"];
    numberToPlayWith = 4;
    followerList = [self initializeFollowerList];
    
    CCSprite *sprite = [CCSprite spriteWithSpriteFrame:frames.firstObject];
    [self addChild:sprite];
    
    timeRunning = true;
    [self schedule:@selector(updateBySecond:) interval:1];
}

-(NSMutableArray *) initializeFollowerList{
    NSMutableArray *followers = [NSMutableArray array];
    for(int i =0; i<numberToPlayWith; i++){
        Follower *follower = (Follower *) [CCBReader load:@"Follower"];
        [followers addObject:[follower initWithOffset:i]];
    }
    return followers;
}

-(void) winLevel{
    self.multiplier += 1;
    self.score += time*self.multiplier;
    self.score += self.levelBonus;
    self.levelBonus += 10;
    [self newLevel];
//    [self displayScore];
}

-(void) newLevel{
    [self toggleMatchMode];
    [leader change:self.matchMode];
    [self resetTimer];
    timeRunning = true;
}

-(void) toggleMatchMode{
    if([self.matchMode isEqualToString:@"color"]){
        self.matchMode = @"shape";
    }
    else{
        self.matchMode = @"color";
    }
}

-(void) resetTimer{
    time = self.LEVEL_TIME;
}

-(void) updateBySecond: (CCTime) dt{
    Boolean allKorrect = [self checkAllStates];
    if(allKorrect){
        [self winLevel];
    }
    else{
        if(timeRunning){
            time -= dt;
        }
        if(time < 0){
            timeRunning = false;
//            [self timeOver];
        }
        [self updateTimeLabel];
    }
 }
 

 -(Boolean) checkAllStates{
     for(Follower *follower in followerList){
         if([self.matchMode isEqualToString:@"color"]){
             if(![follower.currentColor isEqualToString:leader.currentColor]){
                 return false;
             }
         }
         else{
             if(![follower.currentShape isEqualToString:leader.currentShape]){
                 return false;
             }
         }
     }

     return true;
 }

 -(void)updateTimeLabel{
 
 }

/*
 timeOver{
    [self takeAwayHeart]
    flash screen
    flash timer red
 
 }

 

 
 
 }
 
 */

@end
