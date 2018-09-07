//
//  ContactList.m
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray arrayWithCapacity:5];
    }
    return self;
}

-(void)addContact: (Contact *) newContact {
    [_contacts addObject:newContact];
}
-(void)printContacts {
    unsigned long length = [_contacts count];
    int i = 0;
    while (i < length){
        Contact *thisContact = [_contacts objectAtIndex:i];
        NSLog(@"%@", [NSString stringWithFormat:@"%d%s%@", i, ": ", thisContact.name]);
        i++;
    }
}
-(void)showDetails: (unsigned long) index {
    unsigned long length = [_contacts count];
    if (index < length){
        Contact *thisContact = [_contacts objectAtIndex:index];
        NSLog(@"%@", [NSString stringWithFormat:@"%lu%s%@", index, ": ", thisContact.name]);
    } else {
        NSLog(@"Not found");
    }
}

@end
