//
//  ScoreKeeper.h
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger right;
@property (nonatomic, assign) NSInteger wrong;

-(NSString *) getScore;

@end
