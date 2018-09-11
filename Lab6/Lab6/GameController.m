//
//  GameController.m
//  Lab6
//
//  Created by Marcelo Longen on 2018-09-11.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"
#define MAX_ROLL 5


@interface GameController()
{
    @private int rollCount;
}
@end
@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice] , [Dice dice], [Dice dice], [Dice dice], nil];
        rollCount = MAX_ROLL;
    }
    return self;
}

-(void) roll{
    // if I have more than 1 roll counts left, I can roll all 5 dice in the array/
    // except for the ones that are held by user.
    if (rollCount > 0) {
        for (Dice *die in _displayDice){
            if (![die held]){
                [die roll];
            }
        }
        rollCount--;
    }else {
        NSLog(@"You cannot roll more than %d times.", MAX_ROLL);
    }
    
}

-(void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
     //counting spaces
    int spaces = 6;
    for (Dice *die in _displayDice) {
        if (die.held) {
            spaces--;
        }
    }
    [currentDeck appendString:@"*"];
    for (int i = 0;i < spaces;i++){
        [currentDeck appendString:@" "];
    }
    int i = 0;
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ ", [die description]];
    }
   
    for (int i = 0;i < spaces;i++){
        [currentDeck appendString:@" "];
    }
        [currentDeck appendString:@"*"];
    NSLog(@"%@", currentDeck);
}

-(void) holdDie: (NSUInteger) die {
    Dice *chosenDie = (Dice*)[_displayDice objectAtIndex: (die - 1)];
    chosenDie.held = true;
    
}
-(void) resetDice {
    for (Dice *die in _displayDice) {
        if (die.held) {
            die.held = false;
        }
    }
}
-(void)holdAll {
    for (Dice *die in _displayDice) {
        if (!die.held) {
            die.held = true;
        }
    }
}
-(void) displayScore {
    //1. check if the game is over
    // print GAMEOVER IS the game is over
    //2. print current deck and score
    NSLog(@"%s", "*****************************");
    NSLog(@"%s", "*                           *");
    if (rollCount == 0) {
        NSLog(@"%s", "*         GAME OVER         *");
    }
    NSLog(@"%s", "*       Current deck:       *");

    [self displayCurrentDeck];
    NSLog(@"*     Remaining Rolls: %d    *", rollCount);
    int score = 0;
    for (Dice *die in _displayDice) {
        score += die.value;
    }
    NSLog(@"%@", [NSString stringWithFormat:@"*         Score: %d         *", score]);
    NSLog(@"%s", "*                           *");
    NSLog(@"%s", "*****************************");
}
@end
