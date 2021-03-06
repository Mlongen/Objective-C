//
//  FirstManager.h
//  Lab11
//
//  Created by Marcelo Longen on 2018-09-17.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryDelegate.h"

@interface FirstManager : NSObject <KitchenDelegate>

+ (instancetype)sharedObject;
@property (nonatomic, strong) id<DeliveryDelegate> serviceDelegate;

- (void)kitchenDidMakePizza:(Pizza *)pizza;

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

- (BOOL)shouldMakePizzaOfSize:(Kitchen *)kitchen andSize:(PizzaSize)size andToppings:(NSArray *)toppings;
@end
