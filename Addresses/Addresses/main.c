//
//  main.c
//  Addresses
//
//  Created by Alexander Pirsig on 20.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    
    printf("i stores its value at %p\n", addressOfI);
    *addressOfI = 89;
    printf("New i is %d\n",i);
    
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(addressOfI));
    
    float *myPointer = NULL;
    
    if(*myPointer>8){
        printf("foobar");
    }
    
    return 0;
}

