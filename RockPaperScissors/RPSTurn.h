//
//  RPSTurn.h
//  RockPaperScissors
//
//  Created by Ramiro H. Lopez on 1/12/17.
//  Copyright © 2017 Ramiro H. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid
};

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move)move;
-(BOOL)defeats:(RPSTurn*)opponent;

@end
