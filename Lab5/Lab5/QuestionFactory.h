//
//  QuestionFactory.h
//  Lab5
//
//  Created by Marcelo Longen on 2018-09-10.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic, strong) NSArray *questionTypes;
-(Question *) generateRandomQuestion;
@end
