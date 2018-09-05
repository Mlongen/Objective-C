//
//  Student.m
//  Lab2
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Student.h"
// Class: User-defined type (template)
// - states  (attributes) (public, private)
// - methods (behaviours)
@interface Student() {
    // define private properties
    //define private methods
}
@end


@implementation Student {
   // define private instance variables

    
}
//implement methods
- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country
{
    self = [super init];
    if (self) {
        //self.identification = identification; <--- is calling a setter
        _identification = identification;     ///<- is changing the property directly
        _name = name;
        _country = country;
    }
    return self;
}

@end
