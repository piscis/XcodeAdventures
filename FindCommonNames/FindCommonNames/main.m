//
//  main.m
//  FindCommonNames
//
//  Created by Alexander Pirsig on 27.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Read in a file as a huge string (ignoring the possibility of an error)
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Go through the array on string at a time
        for(NSString *n in names)
        {
            // Look for the string "aa" in a case-insensitive manner
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            if(r.location != NSNotFound){
                NSLog(@"%@",n);
            }
        }
        

        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for(NSString *a in words) {
            
            // Look for the string "aa" in a case-insensitive manner
            //NSRange r = [a rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            //if(r.location != NSNotFound){
                
                for(NSString *w in words){
                    
                    if([w caseInsensitiveCompare:a]== NSOrderedSame && w!=a){
                        NSLog(@"Found common name: %@ -> %@", a, w);
                    }else{
                        //NSLog(@"Found common name: %@ -> %@", a, w);
                    }
                }
                
                /*
                if([a caseInsensitiveCompare:b]== NSOrderedAscending){
                    NSLog(@"a comes before b");
                }
                
                if([a caseInsensitiveCompare:b]== NSOrderedDescending){
                    NSLog(@"b comes before a");
                }
                */
            //}
        }
    }
    return 0;
}

