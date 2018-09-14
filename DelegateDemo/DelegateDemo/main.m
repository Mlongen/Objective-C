//
//  main.m
//  DelegateDemo
//
//  Created by Marcelo Longen on 2018-09-13.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "GrumpyPerson.h"
#import "LovelyPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        GrumpyPerson *javier = [GrumpyPerson new];
        LovelyPerson *giada = [LovelyPerson new];
        
        Greeter *kenta = [Greeter new];
        
        kenta.delegate = javier;
        [kenta greet];
        
        
    }
    return 0;
}
