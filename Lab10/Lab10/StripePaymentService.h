//
//  StripePaymentService.h
//  Lab10
//
//  Created by Marcelo Longen on 2018-09-14.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (NSInteger) amount;
-(BOOL)canProcessPayment;
@end
