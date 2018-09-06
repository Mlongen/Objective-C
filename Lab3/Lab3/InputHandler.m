//
//  InputHandler.m
//  Lab3
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
-(NSString *) getInput {
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    
    NSString *inputString =[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    return [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
};
@end
