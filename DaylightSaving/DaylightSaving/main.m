//
//  main.m
//  DaylightSaving
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *tz =[[NSTimeZone alloc] init];
        
        if([tz isDaylightSavingTime] == YES){
            NSLog(@"Daylight saving time is turned OFF");
        }else{
            NSLog(@"Daylight saving time is turned ON");
        }
    }
    return 0;
}

