//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Marcelo Longen on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Pizza : NSObject

typedef enum {
    small,
    medium,
    large
} PizzaSize;


@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;
- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoversWithSize: (PizzaSize) size;

@end
