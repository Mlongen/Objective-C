//
//  FirstManager.m
//  Lab11
//
//  Created by Marcelo Longen on 2018-09-17.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "FirstManager.h"


@implementation FirstManager

+ (instancetype)sharedObject {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

- (BOOL)shouldMakePizzaOfSize:(Kitchen *)kitchen andSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        NSLog(@"NOOPE, no anchovies pizza here.");
        return NO;
    } else {
        return YES;
    }
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    if (pizza) {
        NSLog(@"Pizza made, enjoyyyyyy");
        [self.serviceDelegate deliverPizza:pizza];
    }
}


@end
