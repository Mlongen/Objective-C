//
//  InputCollector.m
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

-(NSString *) inputForPrompt: (NSString *) promptString {
    char inputChars[255];
    
    NSLog(@"%@", promptString);
    
    fgets(inputChars, 255, stdin);
    NSString *inputString =[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return trimmedString;
    
}
@end
