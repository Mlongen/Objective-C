//
//  main.m
//  Lab2
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Student *student1 = [[Student alloc] initWithId:1 andName:@"Marcelo" andCountry:@"Canada"];
//
//
//        NSLog(@"%d", [student1 identification]);
//        [student1 setIdentification: 10];
//        NSLog(@"%d", [student1 identification]);
        
        
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5];
        NSLog(@"%.2f", [box1 volume]);
        NSLog(@"%.2f", [box2 volume]);
        NSLog(@"%.3f", [box2 ratio:box1]);
        
        
        
        
    }
    return 0;
}
