//
//  Box.m
//  Lab2
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length;
{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
        _length = length;
    }
    return self;
}
-(float) volume {
    return _height * _width * _length;
};
-(float) ratio: (Box *) box1 {
    return [self volume] / [box1 volume];
};

@end
