//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion




- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger random1 = 10 + arc4random_uniform(90);
        NSInteger random2 = 10 + arc4random_uniform(90);
        _question = [NSString stringWithFormat:@"%ld%@%ld%@", (long)random1, @" + ", (long)random2, @"?"];
        _answer = random1 + random2;
    }
    return self;
}

@end
