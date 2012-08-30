//
//  main.m
//  Constants
//
//  Created by Alexander Pirsig on 30.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // In literal NSString, use \u for arbitrary unicode chars
        NSLog(@"\u03c0 is %f", M_PI);
        
    }
    return 0;
}

