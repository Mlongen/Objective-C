//
//  Contact.h
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email;
@property (strong) NSString *name;
@property ( strong) NSString *email;

@end
