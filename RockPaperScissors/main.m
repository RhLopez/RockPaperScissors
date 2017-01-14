//
//  main.m
//  RockPaperScissors
//
//  Created by Ramiro H. Lopez on 1/12/17.
//  Copyright © 2017 Ramiro H. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        RPSController *controller = [[RPSController alloc]init];
        [controller throwDown:Paper];
        NSString *resultsMessage = [controller messageFromGame:controller.game];
        NSLog(@"%@", resultsMessage);
    }
    return 0;
}
