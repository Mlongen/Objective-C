//
//  SecondManager.m
//  Lab11
//
//  Created by Marcelo Longen on 2018-09-17.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "SecondManager.h"
#import "Kitchen.h"

@implementation SecondManager

+ (instancetype)sharedObject {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    if (pizza) {
        NSLog(@"Pizza made, enjoyyyyyy");
    }
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

- (BOOL)shouldMakePizzaOfSize:(Kitchen *)kitchen andSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

@end
