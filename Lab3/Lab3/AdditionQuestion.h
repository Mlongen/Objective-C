//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property (nonatomic, assign) NSString *question;
@property (nonatomic, assign) NSInteger answer;
- (instancetype)init;

@end
