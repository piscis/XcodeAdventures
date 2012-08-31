//
//  main.m
//  stockz
//
//  Created by Alexander Pirsig on 30.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc]init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG" forKey:@"stringKey"];
        [stock setObject:[NSNumber numberWithInt:160] forKey:@"numberKey"];
        [stock setObject:[NSNumber numberWithBool:TRUE] forKey:@"booleanKey"];
        [stock setObject:[NSNumber numberWithFloat: 0.8] forKey:@"floatKey"];
        [stock setObject:[[NSDictionary alloc]init] forKey:@"dictionaryKey"];
        [stock setObject:[NSArray array] forKey:@"arrayKey"];
        [stock setObject:[NSData alloc] forKey:@"dataKey"];
        [stock setObject:[NSDate date] forKey:@"dateKey"];
        
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/stockschallenge.plist" atomically:YES];
        
        NSString *stockSrc = [[NSString alloc]initWithContentsOfFile:@"/tmp/stockschallenge.plist" encoding:NSUTF8StringEncoding error:nil];
        
        NSLog(@"RawList:\n %@",stockSrc);
        
    }
    return 0;
}

