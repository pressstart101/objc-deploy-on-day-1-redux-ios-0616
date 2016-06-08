//
//  FISTicTacToeGame.m
//  DeployOnDay1Redux
//
//  Created by Timothy Clem on 9/22/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISTicTacToeGame.h"

@interface FISTicTacToeGame ()


@property (nonatomic, readwrite, strong) NSMutableArray *board;


@end


@implementation FISTicTacToeGame

-(instancetype)init
{
    self = [super init];
    if(self) {
        // Do initialization of your game here, inside this if statement.
        // Leave the rest of this method alone :)
        [self resetBoard];
    }

    return self;
}

-(void)resetBoard
{
    
    //NSMutableArray *newBoard
    self.board = [@[[@[@"", @"", @""]mutableCopy],
                   [@[@"", @"", @""]mutableCopy],
                   [@[@"", @"", @""]mutableCopy]]mutableCopy];
    
    
//    NSMutableArray *newBoard = [[NSMutableArray alloc]initWithCapacity:3];
//    NSMutableArray *rowOne = [[NSMutableArray alloc]initWithObjects:@"", @"", @"", nil];
//    NSMutableArray *rowTwo = [[NSMutableArray alloc]initWithObjects:@"", @"", @"", nil];
//    NSMutableArray *rowThree = [[NSMutableArray alloc]initWithObjects:@"", @"", @"", nil];
//
//    [newBoard addObject:rowOne];
//    [newBoard addObject:rowTwo];
//    [newBoard addObject:rowThree];
}

-(NSString *)playerAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    return   self.board[row][column];
}

-(BOOL)canPlayAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    if ([self.board [row][column]isEqualToString:@""]){
        return YES;
    }
        return NO;
    

}

-(void)playXAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column] = @"X";
}

-(void)playOAtColumn:(NSUInteger)column row:(NSUInteger)row
{
    self.board[row][column] = @"O";
}

-(NSString *)winningPlayer
{
    // NSString *winner = @"";
    //    if ([self.board[0][0]isEqual:self.board[0][1]]&&[self.board[0][0]isEqual:self.board[0][2]]){
    //        return self.board[0][0];
    //    }
    //    if ([self.board[1][0]isEqual:self.board[1][1]]&&[self.board[1][0]isEqual:self.board[1][2]]){
    //        return self.board[1][0];
    //    }
    //    if ([self.board[2][0]isEqual:self.board[2][1]]&&[self.board[2][0]isEqual:self.board[2][2]]){
    //        return self.board[2][0];
    //    }
    //    if ([self.board[0][0]isEqual:self.board[1][0]]&&[self.board[0][0]isEqual:self.board[2][0]]){
    //        return self.board[0][0];
    //    }
    //    if ([self.board[0][1]isEqual:self.board[1][1]]&&[self.board[0][1]isEqual:self.board[2][1]]){
    //        return self.board[0][1];
    //    }
    //    if ([self.board[0][2]isEqual:self.board[1][2]]&&[self.board[0][2]isEqual:self.board[2][2]]){
    //        return self.board[0][2];
    //    }
    //    if ([self.board[0][0]isEqual:self.board[1][1]]&&[self.board[0][0]isEqual:self.board[2][2]]){
    //        return self.board[0][0];
    //    }
    //    if ([self.board[0][2]isEqual:self.board[1][1]]&&[self.board[0][2]isEqual:self.board[2][0]]){
    //        return self.board[0][2];
    //    }else{
    //     return winner;
    //    }
    
    //NSLog(@"\n\n\n\n\n\n\n\n\n%@\n\n\n\n\n\n\n\n", winner);



    for (NSUInteger i = 0; i < 3; i++){
        if (self.board[0][i] == self.board[1][i] &&self.board[0][i] == self.board[2][i]){
            return self.board[0][i];
        }else if(self.board[i][0] == self.board[i][1] &&self.board[i][0] == self.board[i][2]){
            return self.board[i][0];
        }else if ([self.board[0][0]isEqual:self.board[1][1]]&&[self.board[0][0]isEqual:self.board[2][2]]){
            return self.board[0][0];
        }else if ([self.board[0][2]isEqual:self.board[1][1]]&&[self.board[0][2]isEqual:self.board[2][0]]){
            return self.board[0][2];
        }
    }
    return @"";
    }


-(BOOL)isADraw
{
    if (![self.board[0] containsObject:@""]&&![self.board[1] containsObject:@""]&&![self.board[2] containsObject:@""]&&[[self winningPlayer] isEqualToString:@""]){
        return YES;
    }
    
    return NO;
}

@end
