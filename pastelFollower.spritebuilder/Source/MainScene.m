//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"

@implementation MainScene

-(void) Play{
    CCLOG(@"PLAY");
    [[CCDirector sharedDirector]replaceScene:[CCBReader loadAsScene:@"GameScene"] withTransition:[CCTransition transitionRevealWithDirection:CCTransitionDirectionUp duration:.2]];
}

@end
