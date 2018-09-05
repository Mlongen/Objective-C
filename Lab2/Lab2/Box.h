//
//  Box.h
//  Lab2
//
//  Created by Marcelo Longen on 2018-09-05.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject



@property (nonatomic, assign) float width;
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float length;

- (instancetype)initWithWidth: (float) width andHeight: (float) height andLength: (float) length;
-(float) volume;
-(float) ratio: (Box *) box1;

@end
