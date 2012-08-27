//
//  main.m
//  LocalizedHostname
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *host = [[NSHost alloc]init];
        
        NSString *hostname = [host localizedName];
        
        NSLog(@"Localized Hostname is: %@",hostname);
    }
    return 0;
}

