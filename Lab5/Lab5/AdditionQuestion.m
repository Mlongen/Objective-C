//
//  AdditionQuestion.m
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}
-(void) generateQuestion {
            super.question = [NSString stringWithFormat:@"%ld%@%ld%@", super.leftValue, @" + ", super.rightValue, @"?"];
            super.answer = super.leftValue + super.rightValue;
}

@end
