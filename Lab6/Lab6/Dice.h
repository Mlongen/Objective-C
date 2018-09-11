//
//  Dice.h
//  Lab6
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (nonatomic, assign) NSUInteger value;
@property (nonatomic, assign) Boolean held;
- (NSString *)description;
+(instancetype) dice;
-(void)roll;
-(void)hold;
@end
