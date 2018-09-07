//
//  PhoneNumber.h
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-07.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PhoneNumber : NSObject

- (instancetype)initWithType: (NSString *) type andNumber: (NSString *) number;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *number;

@end
