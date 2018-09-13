//
//  Prescription.h
//  Lab7
//
//  Created by Marcelo Longen on 2018-09-12.
//  Copyright © 2018 Marcelo Longen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

@interface Prescription : NSObject


-(Prescription *)writePrescription:(Doctor *) doctor withPatient: (Patient *) patient withSymptom: (NSString *) symptom withPatientDescription: (NSString *) patientDescription;

@end

