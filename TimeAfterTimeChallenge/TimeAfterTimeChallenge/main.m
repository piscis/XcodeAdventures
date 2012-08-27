//
//  main.m
//  TimeAfterTimeChallenge
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear: 1982];
        [comps setMonth: 2];
        [comps setDay:1];
        [comps setHour: 9];
        [comps setMinute: 45];
        [comps setSecond: 0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *birthday = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        
        double timeDiff = [now timeIntervalSinceDate:birthday];
        
        NSLog(@"Your are %f seconds old",timeDiff);
    }
    
    return 0;
}

