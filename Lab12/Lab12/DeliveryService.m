//
//  DeliveryService.m
//  Lab12
//
//  Created by Marcelo Longen on 2018-09-17.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@implementation DeliveryService
    static DeliveryService *instance;

-(void)deliverPizza:(Pizza *)pizza {
    [self.carDelegate deliverPizza:pizza];
    [self.deliveriesMade addObject:pizza];
}

+ (instancetype)sharedObject {

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
        instance.deliveriesMade = [NSMutableArray array];
        instance.carDelegate = [DeliveryCar new];
        
    });
    return instance;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Number of pizzas delivered: %lu", (unsigned long)[_deliveriesMade count]];
}

@end
