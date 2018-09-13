//
//  Patient.h
//  Lab7
//
//  Created by Marcelo Longen on 2018-09-11.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSUInteger age;
@property (nonatomic, assign) NSUInteger currentDoctorID;
- (instancetype)initWithName:(NSString *)name andAge:(NSUInteger) age andHealthCard: (Boolean)healthCard;
-(Boolean) visitDoctor: (Doctor *) doctor;
@property (nonatomic, assign) NSMutableArray *prescriptions;
-(void) requestMedication: (Doctor *) doctor;

@end
