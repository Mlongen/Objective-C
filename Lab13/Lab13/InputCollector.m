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

-(NSString *) stringByPigLatinization: (NSString *) promptString {
    char inputChars[255];
    
    NSLog(@"%@", promptString);
    NSCharacterSet *consonants = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"];
    fgets(inputChars, 255, stdin);
    NSString *inputString =[NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    NSString *trimmedString = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSArray *newArray = [trimmedString componentsSeparatedByString:@" "];
    
    NSMutableString *result = [NSMutableString new];
    for (NSString *word in newArray){
        
        int i = 0;
        while (1) {
            NSString * newString = [word substringWithRange:NSMakeRange(i, 1)];
            NSRange range = [newString rangeOfCharacterFromSet:consonants options:NSCaseInsensitiveSearch];
            if(range.location == NSNotFound)
                break;
            i++;
        }
        
        //get rest of string
        NSString *restOfString = [word substringWithRange:NSMakeRange(i, [word length] - i)];
        //get first character
        NSString *firstChar = [restOfString substringToIndex:1];
        //append first character capitalized
        [result appendString:[firstChar uppercaseString]];
        //append rest of the word
        [result appendString:[restOfString substringFromIndex:1]];
        //append consonants
        NSString * consonants = [word substringWithRange:NSMakeRange(0, i)];
        [result appendString:consonants];
        [result appendString:@"ay "];

    
    }
    return result;
    
}
@end
