//
//  GroceryItem.h
//  Groceries
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface GroceryItem : NSObject {}

@property (nonatomic, copy) NSString *name;

-(id) initWithName: (NSString *)name;
-(NSString *) description;

@end