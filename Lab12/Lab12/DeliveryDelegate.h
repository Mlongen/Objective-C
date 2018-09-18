//
//  DeliveryDelegate.h
//  Lab12
//
//  Created by Marcelo Longen on 2018-09-18.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DeliveryDelegate <NSObject>
-(void)deliverPizza:(Pizza *)pizza;


@end
