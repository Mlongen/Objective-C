//
//  main.m
//  Lab3
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "DivisionQuestion.h"
#import "SubtractionQuestion.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        ScoreKeeper *scoreKeeper = [ScoreKeeper new];
        InputHandler *inputHandler = [[InputHandler alloc] init];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        BOOL gameOn = YES;
        while(gameOn) {
            Question *current_question = [questionFactory generateRandomQuestion];
            [questionManager.questions addObject:current_question];
            NSLog(@"%@", [current_question question]);
            NSString *userInput = [inputHandler getInput];
            if([userInput  isEqual: @"quit"]) {
                gameOn = NO;
                continue;
            }else if ([userInput intValue] == [current_question answer]) {
                NSLog(@"Right!");
                scoreKeeper.right++;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }
            NSLog(@"%@", scoreKeeper.getScore);
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
