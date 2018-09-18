//
//  Apartment.h
//  ARCDEMO
//
//  Created by Marcelo Longen on 2018-09-18.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Apartment : NSObject

@property (nonatomic, strong) NSString *unit;
@property (nonatomic, weak) Person *tenant;
- (instancetype)initWithUnit: (NSString *) unit;
@end
