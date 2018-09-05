//
//  main.m
//  Lab1
//
//  Created by Marcelo Longen on 2018-09-04.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(NSString *prompt) {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    
    
    //this is the same as NSString.stringWithUTF8String(inputChars); in java
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

};

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        Boolean isRunning = true;
        
        while (isRunning) {
            NSString *input = getUserInput(@"Please enter a string: ");
            NSString *option = getUserInput(@"What do you want to do?\n 1. Make the string uppercase.\n 2. Make the string lowercase.\n 3. Convert the string to integer.\n 4. Canadianize the string.\n 5. Respond.\n 6. De-space-it.\n 7. Exit program. ");
            if ([option integerValue] == 1) {
                //making uppercase
                NSLog(@"%@", [input uppercaseString]);
            } else if ([option integerValue] == 2){
                //making lowercase
                NSLog(@"%@", [input lowercaseString]);
            } else if ([option integerValue] == 3){
                int inputInt = [input intValue];
                NSLog(@"%d", inputInt);
            } else if ([option integerValue] == 4){
                NSString* canadianized = [input stringByAppendingString:@" ,eh?"];
                NSLog(@"%@", canadianized);
            } else if ([option integerValue] == 5){
                NSString *last = [input substringFromIndex: [input length] - 1];
                if ([last isEqualToString:@"?"]){
                    NSLog(@"%@", @"I don't know");
                } else if([last isEqualToString:@"!"]) {
                    NSLog(@"%@", @"Whoa, calm down");
                }
            } else if ([option integerValue] == 6){
                NSString *despace = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", despace);
            } else if ([option integerValue] == 7){
                NSLog(@"%@", @"Bye");
                isRunning = false;
            }
        }

        

//
//        //making an integer
//
//
//        NSInteger inputNSInt = [input integerValue];
//
//        //canadianize
//
//
//        NSString* canadianized2 = [NSString stringWithFormat:@"%@%@", input, @", eh?" ];
//
//
//
//
        
        

        
        

    }
    return 0;
}
