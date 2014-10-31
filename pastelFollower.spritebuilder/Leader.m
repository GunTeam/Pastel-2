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

-(void) update:(CCTime)delta{
    float randChange = arc4random()%100;
    
    //With a 5% probability, change color or shape of the leader
    if(randChange < changeProbability){
        float becomeColor = arc4random()%100;
        
        //With a 50% probability, become a color
        if(becomeColor < 50){
            
        }
        else{ //Otherwise, become a shape
            
        }

    }

}

-(NSString *) getCurrentColor{
    return self.CColor;
}

@end
