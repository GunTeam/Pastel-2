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
    [self changeToRandomColor];
    [self changeToRandomShape];
}


-(NSString *) getCurrentColor{
    return self.currentColor;
}

-(NSString *) getCurrentShape{
    return self.currentShape;
}

-(NSString *) change:(NSString *)mode{
    if([mode isEqualToString:@"color"]){
        return [self changeToRandomColor];
    }
    else{
        return [self changeToRandomShape];
    }
}

-(NSString *) changeToRandomColor{
    float rand = arc4random()%4;
    
    self.currentColor = [*POSSIBLE_COLORS objectAtIndex:rand];
    
    return self.currentColor;
    
}
-(NSString *) changeToRandomShape{
    float rand = arc4random()%4;
    
    self.currentShape = [*POSSIBLE_SHAPES objectAtIndex:rand];
    
    return self.currentShape;

}


@end
