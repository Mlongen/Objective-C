//
//  DeliveryService.h
//  Lab12
//
//  Created by Marcelo Longen on 2018-09-17.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "FirstManager.h"
@protocol DeliveryCarDelegate <NSObject>

-(void)deliverPizza:(Pizza *)pizza;
@end
@interface DeliveryService : NSObject <DeliveryDelegate>


-(void)deliverPizza:(Pizza *)pizza;
@property (nonatomic, strong) id<DeliveryCarDelegate> carDelegate;
@property (nonatomic, assign) NSMutableArray *deliveriesMade;
+ (instancetype)sharedObject;
@end

