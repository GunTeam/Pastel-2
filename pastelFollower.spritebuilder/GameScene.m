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
    CCAnimation *animation = [CCAnimation animationWithSpriteFrames:frames delay:0.2];
    CCAction *animateAction = [CCActionAnimate actionWithAnimation:animation];
    [sprite runAction:animateAction];
}

@end
