//
//  PaymentGateway.m
//  Lab10
//
//  Created by Marcelo Longen on 2018-09-14.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void) processPaymentAmount: (NSInteger) amount {
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, payment cannot be processed.");
    }
   
}

@end
