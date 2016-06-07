//
//  FISComputerPlayer.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISComputerPlayer.h"

@implementation FISComputerPlayer

+(BOOL)isEnabled
{
    return YES;
}

-(FISTicTacToePosition)nextPlay
{
    NSUInteger column = 0;
    NSUInteger row = 0;

    while (![self.game.board[column][row] isEqualToString:@""]){
        column = arc4random_uniform(3);
        row = arc4random_uniform(3);

    }
    
    return FISTicTacToePositionMake(column, row);
}

@end
