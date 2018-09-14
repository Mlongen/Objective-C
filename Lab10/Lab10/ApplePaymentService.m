//
//  ApplePaymentService.m
//  Lab10
//
//  Created by Marcelo Longen on 2018-09-14.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(void) processPaymentAmount: (NSInteger) amount{
    
    NSLog(@"Amount of $%ld processed.", amount + 40);
}
-(BOOL)canProcessPayment{
    if (arc4random_uniform(2) == 1) {
        return YES;
    } else {
        return NO;
    }
}
@end
