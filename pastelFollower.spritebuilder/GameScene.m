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
    CCSprite *sprite = [CCSprite spriteWithSpriteFrame:frames.firstObject];
    [self addChild:sprite];
}
/*
 Update {
    boolean allKorrect = [self checkAllStates]
    if allKorrect:
        [self winLevel]
 
    if(self.timeRunning)
        time -= 1/60
    if(time < 0)
         self.timeRunning = false
        [self timeOver]
    [self updateTimeLabel]
 }

 checkAllStates{
 
    for follower in followerList
        if( self.matchMode == "color")
            if(follower.currentColor != leader.currentColor){
                return False
            }
        else{
            if(follower.currentShape != leader.currentShape){
                return False
            }
        }
    return True
 }
 
 updateTimeLabel{
 
 }
 
 timeOver{
    [self takeAwayHeart]
    flash screen
    flash timer red
 
 }
 
 winLevel{
    
    multiplier = some number
    score += time*multiplier
    score += levelBonus
    [self displayScore]
 }
 
 newLevel{
    set the match mode to either color or shape
        set the leader color/shape
        reset timer
        timeRunning = true
 }
 
 
 }
 
 */

@end
