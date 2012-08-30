//
//  Asset.m
//  BMITime
//
//  Created by Alexander Pirsig on 30.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

-(NSString *) description
{
    if([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", [self label], [self resaleValue], [self holder]];
    }else{
        return [NSString stringWithFormat:@"<%@: $%d unassigned", [self label],[self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
