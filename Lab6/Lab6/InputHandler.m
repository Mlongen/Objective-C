//
//  InputHandler.m
//  Lab5
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
+(NSString *) inputForPrompt: (NSString *) promptString {
    char inputChars[10];
    
    NSLog(@"%@", promptString);
    
    fgets(inputChars, 10, stdin);
    NSString *inputString =[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return trimmedString;
    
}
@end
