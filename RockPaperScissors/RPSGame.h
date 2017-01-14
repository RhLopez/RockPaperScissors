//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Ramiro H. Lopez on 1/12/17.
//  Copyright © 2017 Ramiro H. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*)playerTurn
                      secondTurn:(RPSTurn*)computerTurn;
-(RPSTurn*)winner;
-(RPSTurn*)loser;

@end
