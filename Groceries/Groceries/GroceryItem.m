//
//  GroceryItem.m
//  Groceries
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import "GroceryItem.h"

@implementation GroceryItem

NSString *name = @"Unnamed";

-(id)initWithName:(NSString *)name {
    
    self = [super init];
    [self setName:name];
    
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"GroceryItem: %@",[self name]];
}

@end
