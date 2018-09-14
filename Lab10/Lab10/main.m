//
//  main.m
//  Lab10
//
//  Created by Marcelo Longen on 2018-09-14.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [InputCollector new];
        
        NSUInteger randomDollar =   100 + arc4random_uniform(900);
        
        NSUInteger userInput = [[inputCollector inputForPrompt:[NSString stringWithFormat:@"Thank you for shopping at Acme.com\nYour total today is $%lu.00.\nPlease select your payment method:\n1. Paypal\n2. Stripe\n3. Amazon\n4. ApplePay", (unsigned long)randomDollar]] integerValue];

        switch (userInput){
            case 1:
            {
                PaymentGateway *paymentGateway = [PaymentGateway new];
                PaypalPaymentService *paypalPaymentService = [PaypalPaymentService new];
                paymentGateway.delegate = paypalPaymentService;
                [paymentGateway processPaymentAmount:randomDollar];
            }
                break;
            case 2:
            {
                PaymentGateway *paymentGateway = [PaymentGateway new];
                StripePaymentService *stripePaymentService = [StripePaymentService new];
                paymentGateway.delegate = stripePaymentService;
                [paymentGateway processPaymentAmount:randomDollar];
            }
                break;
            case 3:
            {
                PaymentGateway *paymentGateway = [PaymentGateway new];
                AmazonPaymentService *amazonPaymentService = [AmazonPaymentService new];
                paymentGateway.delegate = amazonPaymentService;
                [paymentGateway processPaymentAmount:randomDollar];
            }
                break;
            case 4:
            {
                PaymentGateway *paymentGateway = [PaymentGateway new];
                ApplePaymentService *applePaymentService = [ApplePaymentService new];
                paymentGateway.delegate = applePaymentService;
                [paymentGateway processPaymentAmount:randomDollar];
            }
                break;
            default:
                NSLog(@"Please choose a valid option.");
                break;
        }
        

        
        
        
        
    }
    return 0;
}
