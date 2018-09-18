//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "FirstManager.h"
#import "SecondManager.h"
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"Welcome! Which manager do you prefer?\n 1 - FirstManager\n 2 - SecondManager\n 3 - No manager.");
            char str[100];
            fgets (str, 100, stdin);
            NSString *pickManagerString = [[NSString alloc] initWithUTF8String:str];
            pickManagerString = [pickManagerString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([pickManagerString intValue] == 1) {
                FirstManager *firstManager = [FirstManager sharedObject];
                restaurantKitchen.delegate = firstManager;
            } else if ([pickManagerString intValue] == 2) {
                SecondManager *secondManager = [SecondManager sharedObject];
                restaurantKitchen.delegate = secondManager;
            } else {
                restaurantKitchen.delegate = nil;
            }
            NSLog(@"Please pick your pizza size and toppings:");
            char str2[100];
            fgets (str2, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str2];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
            NSLog(@"Input was %@", inputString);
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            if ([commandWords[0] isEqualToString:@"small"]) {
                [restaurantKitchen makePizzaWithSize:(PizzaSize)small toppings:@[commandWords[1], commandWords[2], commandWords[3]]];
            } else if ([commandWords[0] isEqualToString:@"medium"]) {
                [restaurantKitchen makePizzaWithSize:(PizzaSize)medium toppings:@[commandWords[1], commandWords[2], commandWords[3]]];
            } else if ([commandWords[0] isEqualToString:@"large"]) {
                [restaurantKitchen makePizzaWithSize:(PizzaSize)large toppings:@[commandWords[1], commandWords[2], commandWords[3]]];
            } else {
                NSLog(@"Please enter valid size");
            }
        }
        
    }
    return 0;
}
