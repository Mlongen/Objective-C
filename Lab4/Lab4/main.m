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
#import "PhoneNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *list = [ContactList new];
        NSLog(@"Welcome!");
        BOOL isRunning = YES;
        while (isRunning) {
            NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do?\nnew - Create a new contact\nlist - List all contacts\nshow - Check if contact exists at certain index\nfind - search\nhistory - show last 3 commands entered\nquit - Exit application"];
            
            if([userInput  isEqual: @"quit"]) {
                isRunning = NO;
                NSLog(@"See you!");
                continue;
            } else if ([userInput  isEqual: @"new"]){
                NSString *finalEmail;
                BOOL emailExists = YES;
                //check to see if the email exists
                while (emailExists) {
                    BOOL foundEmail = NO;
                    NSString *email = [inputCollector inputForPrompt:@"Enter the email: "];
                    int i = 0;
                    while (i < [list.contacts count]){
                        NSString *currentEmail = [(Contact *)[list.contacts objectAtIndex:i] email];
                        if ([currentEmail isEqualToString:email]){
                            NSLog(@"Email already exists");
                            foundEmail = YES;
                        }
                        i++;
                        if(i == [list.contacts count] && foundEmail != YES) {
                            foundEmail = NO;
                            continue;
                        }
                    }
                    if (!foundEmail) {
                        finalEmail = email;
                        emailExists = NO;
                    }
                    
                }
                NSString *name = [inputCollector inputForPrompt:@"Enter the name: "];
                Contact *user = [[Contact alloc] initWithName:name andEmail:finalEmail];
                NSInteger contactNumbers = [[inputCollector inputForPrompt:@"Would you like to add phone numbers for this contact? If yes, type how many numbers, if not, type 0"] intValue];
                int i = 0;
                while (i < contactNumbers){
                    NSString *numberType = [inputCollector inputForPrompt:@"Are you adding a home, mobile or commercial number?"];
                    NSString *number = [inputCollector inputForPrompt:@"Enter the number:"];
                    PhoneNumber *newNumber = [[PhoneNumber alloc] initWithType:numberType andNumber:number];
                    [user.phoneNumbers addObject:newNumber];
                    i++;
                }
                
                [list addContact:user];
            } else if ([userInput  isEqual: @"list"]) {
                [list printContacts];
                continue;
            } else if ([userInput  isEqual: @"show"]) {
                NSString *index = [inputCollector inputForPrompt:@"Enter the index: "];
                [list showDetails:[index longLongValue]];
                continue;
            } else if (([userInput length] > 3) && [[userInput substringToIndex:4] isEqual:@"find"]){
                if ([userInput length] < 5) {
                    NSLog(@"Please enter a search term");
                    continue;
                };
                NSString *searchTerm = [userInput substringFromIndex:5];
                int i = 0;
                while(i < [list.contacts count]){
                    NSString *currentEmail = [(Contact *)[list.contacts objectAtIndex:i] email];
                    NSString *currentName = [(Contact *)[list.contacts objectAtIndex:i] name];
                    if ([currentName rangeOfString:searchTerm].location == NSNotFound && [currentEmail rangeOfString:searchTerm].location == NSNotFound){
                        NSLog(@"Not found");
                    } else {
                        [list showDetails:i];
                    }
                    i++;
                }
            } else if ([userInput isEqual:@"history"]){
                NSLog(@"Last 3 commands: ");
                NSInteger i = 0;
                NSInteger commandCount = [inputCollector.commandlist count];
                if (commandCount > 3) {
                    i = commandCount - 4;
                }
                while (i < commandCount - 1) {
                    NSLog(@"%@", [inputCollector.commandlist objectAtIndex:i]);
                    i++;
                }
            }
        }
    return 0;
    }
    
}
