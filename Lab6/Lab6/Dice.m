//
//  Dice.m
//  Lab6
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _value = 1 + arc4random_uniform(6);
        _held = false;
    }
    return self;
}

+(instancetype) dice {
    return [[self alloc] init];
}

-(void)roll{
    _value = 1 + arc4random_uniform(6);
}
-(void)hold{
    _held = true;
}

- (NSString *)description
{
    switch (_value) {
        case 1:
            if (_held){
                 return @"[⚀]";
            }
            return @"⚀";
        case 2:
            if (_held){
                return @"[⚁]";
            }
            return @"⚁";
        case 3:
            if (_held){
                return @"[⚂]";
            }
            return @"⚂";
        case 4:
            if (_held){
                return @"[⚃]";
            }
            return @"⚃";
        case 5:
            if (_held){
                return @"[⚄]";
            }
            return @"⚄";
        case 6:
            if (_held){
                return @"[⚅]";
            }
            return @"⚅";
        default:
            return @"Invalid die";
            break;
            
    }
}
@end
