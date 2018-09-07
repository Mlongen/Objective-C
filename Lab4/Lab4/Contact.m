//
//  Contact.m
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email;
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumbers = [NSMutableArray arrayWithCapacity:10];
    }
    return self;
}

@end
