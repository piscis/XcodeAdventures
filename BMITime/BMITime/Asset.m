//
//  Asset.m
//  BMITime
//
//  Created by Alexander Pirsig on 30.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

-(NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%d>",[self label],[self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
