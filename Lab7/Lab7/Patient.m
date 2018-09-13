//
//  Patient.m
//  Lab7
//
//  Created by Marcelo Longen on 2018-09-11.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//


#import "Prescription.h"

@interface Patient() {
@private
    Boolean healthCard;
}
@end
@implementation Patient

- (instancetype)initWithName:(NSString *)name andAge:(NSUInteger) age andHealthCard: (Boolean)healthCard
{
    self = [super init];
    if (self) {
        _name = name;
        healthCard = healthCard;
        _age = age;
        _prescriptions = [NSMutableArray new];
    }
    return self;
}
-(Boolean) visitDoctor: (Doctor *) doctor {
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

-(void) requestMedication: (Doctor *) doctor {
    //1. doctor checking if self(patient) is in the patient list.
    if ([doctor prescribeMedication: self withSymptoms: NULL andWithPatientDescription: NULL]) {
        NSLog(@"Got the medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
}

@end
