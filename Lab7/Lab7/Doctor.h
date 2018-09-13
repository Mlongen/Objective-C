//
//  Doctor.h
//  Lab7
//
//  Created by Marcelo Longen on 2018-09-11.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"

@class Patient;

@interface Doctor : NSObject

@property (nonatomic, assign) NSInteger id;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization;
-(Boolean)acceptPatient:(Patient *) patient withHealthCard: (Boolean) healthCard;
-(Boolean) prescribeMedication: (Patient *) patient withSymptoms: (NSString *) symptoms;
@end
