//
//  main.m
//  BMITime
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc]init];
        
        for(int i = 0; i< 10; i++) {

            // Create an instance of Person
            Employee *person = [[Employee alloc]init];
            
            // Give the instance variables interesting values
            [person setWeightInKilos:96+i];
            [person setHeightInMeters:1.8-i/10.0];
            [person setEmployeeID:i];
            
            [employees addObject:person];
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc]init];
        
        // Create 10 assets
        for(int i = 0; i<10;i++){
            // Create an asset
            Asset *asset = [[Asset alloc]init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i*17];
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find taht employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        NSLog(@"Employess: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"allAssets: %@",allAssets);
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
        
    }
    sleep(100);
    return 0;
}

