//
//  main.m
//  Lab13
//
//  Created by Marcelo Longen on 2018-09-18.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [InputCollector new];
        
        NSLog(@"%@", [inputCollector stringByPigLatinization:@"Input string for piglatinization"]);
        
        
    }
    return 0;
}
