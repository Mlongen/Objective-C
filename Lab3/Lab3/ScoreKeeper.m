//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}
-(NSString *) getScore {
    float percentage;
    NSInteger total = _right + _wrong;
    if (total == 0) {
        percentage = 0;
    } else {
        percentage = (100 * _right)/ total;
    }
    return [NSString stringWithFormat:@"%@%ld%s%ld%s%s%ld%s", @"score: ", (long)_right, " right, ", (long)_wrong, " wrong", " ---- ", (long)percentage, "\%"];
};
@end