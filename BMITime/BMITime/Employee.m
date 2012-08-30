//
//  Employee.m
//  BMITime
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "Employee.h"
#import "Person.h"
#import "Asset.h"

@implementation Employee
@synthesize employeeID;


-(float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

-(void)addAssetsObject:(Asset *)a
{
    // Is assets nil?
    if(!assets){
        assets = [[NSMutableSet alloc]init];
    }
    
    [assets addObject:a];
    [a setHolder:self];
}

-(unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    
    for(Asset *a in assets){
        sum += [a resaleValue];
    }
    
    return sum;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}
            
-(void)dealloc
{
    NSLog(@"deallocating %@",self);
}

@end
