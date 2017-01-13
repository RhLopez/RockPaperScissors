//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Ramiro H. Lopez on 1/12/17.
//  Copyright © 2017 Ramiro H. Lopez. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove:(Move)move {
    self = [super init];
    
    if (self) {
        _move = move;
    }
    
    return self;
}

-(Move)generateMove {
    return Rock;
}

@end
