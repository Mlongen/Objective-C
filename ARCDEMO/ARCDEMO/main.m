//
//  main.m
//  ARCDEMO
//
//  Created by Marcelo Longen on 2018-09-18.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Apartment *myApt = [[Apartment alloc] initWithUnit:@"103"];
        Person *p = [[Person alloc] initWithName:@"Yukako"];
        
        
        NSLog(@"Apartment created!");
        NSLog(@"Person created!");
        myApt.tenant = p;
        p.apartment = myApt;
        
        myApt = nil;
        p = nil;

        
        }
    return 0;
}
