//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Marcelo Longen on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    NSLog(@"Pizza made!");
    NSLog(@"%@",self);
    return self;
}

+ (Pizza *) largePepperoni{
    return [[Pizza alloc]initWithSize:large andToppings: @[@"Pepperoni", @"Cheese", @"Cheese"]];
}
+ (Pizza *) meatLoversWithSize: (PizzaSize) size{
    return [[Pizza alloc]initWithSize:size andToppings: @[@"chicken", @"beef", @"pork"]];
}

- (NSString *)description
{
    NSString *pizzaSize;
    switch (_size) {
        case small:
            pizzaSize = @"Small";
            break;
        case medium:
            pizzaSize = @"Medium";
            break;
        case large:
            pizzaSize = @"Large";
            break;
        default:
            break;
    }
    return [NSString stringWithFormat:@"Size: %@, Toppings: %@, %@, %@.", pizzaSize, _toppings[0], _toppings[1], _toppings[2]];
}
@end
