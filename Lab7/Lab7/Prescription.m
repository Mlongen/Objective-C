//
//  Prescription.m
//  Lab7
//
//  Created by Marcelo Longen on 2018-09-12.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Prescription.h"
#import "Doctor.h"
#import "Patient.h"

@interface Prescription() {
@private
    NSString *patientName;
    NSString *doctorName;
    NSString *symptom;
    NSString *patientDescription;
}
@end
@implementation Prescription

- (instancetype)init
{
    self = [super init];
    if (self) {

        
    }
    return self;
}

+(Prescription *)writePrescription:(Doctor *) doctor withPatient: (Patient *) patient withSymptom: (NSString *) symptom withPatientDescription: (NSString *) patientDescription{
    Prescription *new = [[Prescription alloc] init];
    new->patientName = patient.name;
    new->doctorName = doctor.name;
    new->symptom = symptom;
    new->patientDescription = patientDescription;

    return new;
    
}

@end


