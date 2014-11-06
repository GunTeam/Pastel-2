//
//  Leader.m
//  pastelFollower
//
//  Created by Jorrie Brettin on 9/26/14.
//  Copyright 2014 Apportable. All rights reserved.
//

#import "Leader.h"


@implementation Leader

-(void) didLoadFromCCB {
    *POSSIBLE_COLORS =  @[@"Blue",@"Green",@"Yellow",@"Red"];
    *POSSIBLE_SHAPES =  @[@"Star",@"Circle",@"Square",@"Triangle"];
    changeProbability = 5;
    currentColor = @"";
    self.CColor = @"Blue";
}


-(NSString *) getCurrentColor{
    return self.CColor;
}

-(NSString *) getCurrentShape{
    return self.CShape;
}
-(void) changeToRandomColor{
    float rand = arc4random()%4;
    
}
-(void) changeToRandomShape{
    float rand = arc4random()%4;
}


@end
