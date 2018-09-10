//
//  QuestionManager.h
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject


@property (nonatomic, strong) NSMutableArray *questions;
-(NSString *) timeOutput;
@end
