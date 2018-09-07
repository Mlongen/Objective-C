//
//  PhoneNumber.m
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-07.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber

- (instancetype)initWithType: (NSString *) type andNumber: (NSString *) number;
{
    self = [super init];
    if (self) {
        _type = type;
        _number = number;
    }
    return self;
}

@end
