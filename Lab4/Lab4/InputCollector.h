//
//  InputCollector.h
//  Lab4
//
//  Created by Marcelo Longen on 2018-09-06.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject


@property (nonatomic, strong) NSMutableArray *commandlist;
-(NSString *) inputForPrompt: (NSString *) promptString;
@end
