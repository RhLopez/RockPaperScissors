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

@end
