//
//  Person.h
//  BMITime
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

// You will be able to set those instance variabls using these methods
@property float heightInMeters;
@property int weightInKilos;

// This method calculates the Body Mass Index
-(float)bodyMassIndex;

@end
