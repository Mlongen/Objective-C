//
//  QuestionFactory.m
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"
#import "SubtractionQuestion.h"
@implementation QuestionFactory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *) generateRandomQuestion {
    //return an instance of +, -, *, /
    NSString *type = [_questionTypes objectAtIndex:arc4random_uniform(4)];
    return [NSClassFromString(type) new];
}
@end
