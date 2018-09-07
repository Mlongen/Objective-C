//
//  main.m
//  Lab3
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        NSLog(@"MATHS!");
        
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        BOOL gameOn = YES;
        while(gameOn) {
            
            AdditionQuestion *current_question = [[AdditionQuestion alloc] init];
            NSLog(@"%@", [current_question question]);
            NSString *userInput = [[[InputHandler alloc] init] getInput];
            if([userInput  isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            }else if ([userInput intValue] == [current_question answer]) {
                NSLog(@"Right!");
                scoreKeeper.right++
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }
            NSLog(@"%@", scoreKeeper.getScore);
        }
    }
    return 0;
}
