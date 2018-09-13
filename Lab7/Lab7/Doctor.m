//
//  Doctor.m
//  Lab7
//
//  Created by Marcelo Longen on 2018-09-11.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import "Prescription.h"

@interface Doctor(){
@private
    NSMutableArray *patientList;
}
@end

@implementation Doctor

- (instancetype)initWithName:(NSString *)name andSpecialization:(NSString *)specialization
{
    self = [super init];
    if (self) {
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
    }
    return self;
}
-(Boolean)acceptPatient: (Patient *) patient withHealthCard: (Boolean) healthCard{
    if (healthCard) {
        [patientList addObject:patient];
        NSLog(@"Successfully added to the patient list.");
        return true;
    } else {
        NSLog(@"Invalid healthCard");
        return false;
    }
};
-(Boolean) prescribeMedication: (Patient *) patient withSymptoms: (NSString *) symptoms andWithPatientDescription: (NSString *) patientDescription{
    if ([patientList containsObject:patient]) {
        
        //1. check the symptom
        //2. create a prescription
        
        //3. give the prescription to the patient
        
        //4. give the medication
        NSLog(@"Medication on the way...");
        return true;
    }
    else {
        NSLog(@"You are not my patient.");
        return false;
    }
}

@end

