//
//  DeliveryCar.h
//  Lab12
//
//  Created by Marcelo Longen on 2018-09-17.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryService.h"

@interface DeliveryCar : NSObject <DeliveryCarDelegate>

-(void)deliverPizza:(Pizza *)pizza;
@end
