 //
//  QuestionManager.m
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}

-(NSString *) timeOutput {
    Question *first = [_questions objectAtIndex:0];
    Question *last = [_questions lastObject];
    NSTimeInterval interval = [last.endTime timeIntervalSinceDate:first.startTime];
    long second = lroundf(interval);
    
    return [NSString stringWithFormat:@"Total time: %lus, average time: %lus", second, second / [_questions count]];
    

}
@end
