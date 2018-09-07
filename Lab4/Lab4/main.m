//
//  main.m
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *list = [ContactList new];
        BOOL isRunning = YES;
        while (isRunning) {
            NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - Check if contact exists at certain index\nquit - Exit application"];
            NSLog(@"%@", userInput);
            
            if([userInput  isEqual: @"quit"]) {
                isRunning = NO;
                NSLog(@"Adieu");
                continue;
            } else if ([userInput  isEqual: @"new"]){
                NSString *name = [inputCollector inputForPrompt:@"Enter the name: "];
                NSString *email = [inputCollector inputForPrompt:@"Enter the email: "];
                Contact *user = [[Contact alloc] initWithName:name andEmail:email];
                [list addContact:user];
            } else if ([userInput  isEqual: @"list"]) {
                [list printContacts];
                continue;
            } else if ([userInput  isEqual: @"show"]) {
                NSString *index = [inputCollector inputForPrompt:@"Enter the index: "];
                [list showDetails:[index longLongValue]];
                continue;
            }
        }
    return 0;
    }
    
}
