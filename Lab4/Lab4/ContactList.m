//
//  ContactList.m
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"
#import "PhoneNumber.h"

@implementation ContactList


- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray arrayWithCapacity:10];
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
        NSMutableString *phoneNumbers = [NSMutableString new];
        for (PhoneNumber *phoneNumber in thisContact.phoneNumbers){
            [phoneNumbers appendString:[NSString stringWithFormat:@"%@%s%@ ", phoneNumber.type, ":", phoneNumber.number]];
        }
        NSLog(@"%@", [NSString stringWithFormat:@"%d%s%@%s%@%s%@", i, ": <", thisContact.name,"> (", thisContact.email,") - Phones: ", phoneNumbers]);
        i++;
    }
}
-(NSInteger)getContactsLength {
    return [_contacts count];
}
-(void)showDetails: (unsigned long) index {
    unsigned long length = [_contacts count];
    if (index < length){
        Contact *thisContact = [_contacts objectAtIndex:index];
        
        NSMutableString *phoneNumbers = [NSMutableString new];
        for (PhoneNumber *phoneNumber in thisContact.phoneNumbers){
            [phoneNumbers appendString:[NSString stringWithFormat:@"%@%s%@ ", phoneNumber.type, ":", phoneNumber.number]];
        }
        NSLog(@"%@", [NSString stringWithFormat:@"%lu%s%@%s%@%s%@", index, ": <", thisContact.name,"> (", thisContact.email,") - Phones: ", phoneNumbers]);
    } else {
        NSLog(@"Not found");
    }
}

@end
