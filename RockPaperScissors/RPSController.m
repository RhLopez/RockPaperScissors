//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Ramiro H. Lopez on 1/12/17.
//  Copyright © 2017 Ramiro H. Lopez. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move)playersMove {
   
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
    RPSTurn *computerTurn = [[RPSTurn alloc]init];
    
    self.game = [[RPSGame alloc]initWithFirstTurn:playersTurn
                                       secondTurn:computerTurn];
    
}

-(NSString*)resultsString:(RPSGame*)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You win!" : @"You lose";
}

-(NSString*)messageFromGame:(RPSGame*)game {
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie!";
    } else {
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultsString = [self resultsString:game];
        
        NSString *wholeString = [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".", resultsString];
        
        return wholeString;
    }
    
}

@end
