//
//  Follower.m
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "Follower.h"


@implementation Follower



/*
 initWithOffset creates a new follower with a parameter that details how to shift the associations between
 color and shape. Offset of 0 (default configuration) is:
 
 Blue --> Star
 Green --> Circle
 Yellow --> Square
 Red --> Triangle
 
 
 Any addition of an offset shifts the shapes down by one as such (offset of 1):
 Blue --> Triangle
 Green --> Star
 Yellow --> Circle
 Red --> Square
 
 
 */
-(id)initWithOffset:(int)offset
{
    self = [super init];
    if (self) {
        int NUM_COLORS = 4;
        *POSSIBLE_COLORS =  @[@"Blue",@"Green",@"Yellow",@"Red"];
        *POSSIBLE_SHAPES =  @[@"Star",@"Circle",@"Square",@"Triangle"];

        int i;
        for (i = 0; i < [*POSSIBLE_COLORS count]; i++) {
            NSString *color = [*POSSIBLE_COLORS objectAtIndex:i];
            int shapeIndex = (i+offset)%NUM_COLORS;
            NSString *shape =[*POSSIBLE_COLORS objectAtIndex:shapeIndex];
            [_colorsToShapes setObject: shape forKey: color];
            [_shapesToColors setObject: color forKey: shape];
        }
        
        self.stateIndex = offset;
        self.currentColor = [*POSSIBLE_COLORS objectAtIndex:self.stateIndex];
        self.currentShape = _colorsToShapes[self.currentColor];
    }
    return self;
}

-(void) didLoadFromCCB {

}

-(NSString *) getCurrentColor{
    return self.currentColor;
}
-(NSString *) getCurrentShape{
    return self.currentShape;
}
-(void) changeShape{
    self.stateIndex = (self.stateIndex + 1)%NUM_COLORS;
    self.currentColor = [*POSSIBLE_COLORS objectAtIndex:self.stateIndex];
    self.currentShape = _colorsToShapes[self.currentColor];
}


@end
