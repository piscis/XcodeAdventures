//
//  Employee.h
//  BMITime
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

@interface Employee : Person
{
    int employeeID;
}

@property int employeeID;
@end
