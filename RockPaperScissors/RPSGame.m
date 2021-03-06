//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Ramiro H. Lopez on 1/12/17.
//  Copyright © 2017 Ramiro H. Lopez. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*)playerTurn
                      secondTurn:(RPSTurn*)computerTurn {
    self = [super init];
    
    if (self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}

-(RPSTurn*)winner {
    if ([self.firstTurn defeats:self.secondTurn]) {
        return self.firstTurn;
    } else {
        return self.secondTurn;
    }
}

-(RPSTurn*)loser {
    if (![self.firstTurn defeats:self.secondTurn]) {
        return self.firstTurn;
    } else {
        return self.secondTurn;
    }
}

@end
