//
//  ContactList.h
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactList : NSObject

- (instancetype)init;
-(void)addContact:(Contact *) newContact;
-(void)printContacts;
-(void)showDetails: (unsigned long) index;
@property (assign, readwrite) NSMutableArray *contacts;

@end
