//
//  GameController.h
//  Lab6
//
//  Created by Marcelo Longen on 2018-09-11.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *displayDice;
-(void) roll;
-(void) displayCurrentDeck;
-(void) holdDie: (NSUInteger) die;
-(void) resetDice;
-(void)holdAll;
-(void) displayScore;
@end
