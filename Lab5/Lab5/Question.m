//
//  AdditionQuestion.m
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Question.h"

@implementation Question




- (instancetype)init
{
    self = [super init];
    if (self) {
        _leftValue = 10 + arc4random_uniform(90);
        _rightValue = 10 + arc4random_uniform(90);
//        _question = [NSString stringWithFormat:@"%ld%@%ld%@", (long)random1, @" + ", (long)random2, @"?"];
//        _answer = _leftValue + _rightValue;
        
        _startTime = [NSDate date];
    }
    return self;

}

-(NSInteger)answer{
    _endTime = [NSDate date];
    
    return _answer;
}
-(NSTimeInterval) answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}
-(void) generateQuestion{
    
}
@end
