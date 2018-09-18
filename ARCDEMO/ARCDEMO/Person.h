//
//  Person.h
//  ARCDEMO
//
//  Created by Marcelo Longen on 2018-09-18.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"
@interface Person : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) Apartment *apartment;

- (instancetype)initWithName: (NSString *) name;
@end
