//
//  main.c
//  Coolness
//
//  Created by Alexander Pirsig on 20.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    for(int i=99; i>=0;i=i-3){
        
        printf("%d\n",i);
        
        if(i%5==0){
            printf("Found one!\n");
        }
        
        
    }
    return 0;
}

