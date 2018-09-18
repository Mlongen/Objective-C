//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen


- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if ([self.delegate respondsToSelector:@selector(shouldMakePizzaOfSize:andSize:andToppings:)]) {
        if (![self.delegate shouldMakePizzaOfSize:self andSize:size andToppings:toppings]) {
            NSLog(@"Sorry, cannot make pizza");
            return NULL;
        } else {
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                return [[Pizza alloc]initWithSize:large andToppings:toppings];
            } else {
                return [[Pizza alloc]initWithSize:size andToppings:toppings];
            }
        }
    } else {
        return [[Pizza alloc]initWithSize:size andToppings:toppings];
    }
    
    //respond
    
}
@end
