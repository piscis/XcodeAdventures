//
//  main.m
//  Groceries
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroceryItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *grocerieList = [NSMutableArray array];
        
        GroceryItem *item1 = [[GroceryItem alloc]initWithName:@"ToiPa"];
        GroceryItem *item2 = [[GroceryItem alloc]initWithName:@"Müsli"];
        GroceryItem *item3 = [[GroceryItem alloc]initWithName:@"Soda"];
        
        [grocerieList addObject:item1];
        [grocerieList addObject:item2];
        [grocerieList addObject:item3];
        
        
        
        for(GroceryItem *item in grocerieList){
            NSLog(@"GroceryItem: %@",item);
        }
    }
    return 0;
}

