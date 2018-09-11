//
//  main.m
//  Lab6
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *player1 = [GameController new];

        while (true) {
            NSString *input = [InputHandler inputForPrompt:@"\n 'roll' to roll the dice.\n 'hold' to hold one or more dices.\n 'reset' to unhold all dices.\n 'display' to display your dices and score.\n 'quit to quit the game."];
            //roll, hold, reset, display, quit
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayScore];
            } else if ([input isEqualToString:@"hold"]){
                int diceToHold = [[InputHandler inputForPrompt:@"Which dice do you want to hold?"] intValue];
                [player1 holdDie:diceToHold];
                [player1 displayScore];
            } else if ([input isEqualToString:@"reset"]){
                [player1 resetDice];
                [player1 displayScore];
            } else if ([input isEqualToString:@"display"]){
                [player1 displayScore];
            }
            else if ([input isEqualToString:@"quit"]){
                break;
            }
        }
    }
    return 0;
}
