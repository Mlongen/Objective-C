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

static void addUser(InputCollector *inputCollector, ContactList *list) {
    NSString *finalEmail;
     //check to see if the email exists
    BOOL emailExists = YES;
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
    NSInteger contactNumbers = [[inputCollector inputForPrompt:@"Would you like to add phone numbers for this contact? If yes, type how many numbers? If not, type 0"] intValue];
    int i = 0;
    while (i < contactNumbers){
        NSString *askNumberType = [inputCollector inputForPrompt:@"What kind of number are you adding? Please enter an option: (1)Home, (2)Mobile, (3)Commercial, (4)Other"];
        NSString *numberType;
        if ([askNumberType intValue] == 1){
            numberType = @"Home";
        } else if ([askNumberType intValue] == 2){
             numberType = @"Mobile";
        } else if ([askNumberType intValue] == 3){
            numberType = @"Commercial";
        } else if ([askNumberType intValue] == 4){
            numberType = @"Other";
        }
        NSString *number = [inputCollector inputForPrompt:@"Enter the phone number:"];
        PhoneNumber *newNumber = [[PhoneNumber alloc] initWithType:numberType andNumber:number];
        [user.phoneNumbers addObject:newNumber];
        i++;
    }
    
    [list addContact:user];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *list = [ContactList new];
        NSLog(@"Welcome!");
        PhoneNumber *newNumber2 = [[PhoneNumber alloc] initWithType:@"Commercial" andNumber:@"123.456.789"];
        Contact *user1 = [[Contact alloc] initWithName:@"John Smith" andEmail:@"johnsmith@gmail.com"];
         [user1.phoneNumbers addObject:newNumber2];
        Contact *user2 = [[Contact alloc] initWithName:@"Marcelo Longen" andEmail:@"marcelolongen@gmail.com"];
        PhoneNumber *newNumber = [[PhoneNumber alloc] initWithType:@"Home" andNumber:@"123.456.789"];
        [user2.phoneNumbers addObject:newNumber];
        Contact *user3 = [[Contact alloc] initWithName:@"Test user" andEmail:@"testuser3@gmail.com"];
         [user3.phoneNumbers addObject:newNumber];
        Contact *user4 = [[Contact alloc] initWithName:@"Test user2" andEmail:@"testuser4@gmail.com"];
         [user4.phoneNumbers addObject:newNumber2];
        [list.contacts addObject:user1];
        [list.contacts addObject:user2];
        [list.contacts addObject:user3];
        [list.contacts addObject:user4];
        BOOL isRunning = YES;
        while (isRunning) {
            NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do?\nnew - Create a new contact\nlist - List all contacts\nshow - Check if contact exists at certain index\nfind - search\nhistory - show last 3 commands entered\nquit - Exit application"];
            
            if([userInput  isEqual: @"quit"]) {
                isRunning = NO;
                NSLog(@"See you!");
                continue;
            } else if ([userInput  isEqual: @"new"]){
                addUser(inputCollector, list);
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
