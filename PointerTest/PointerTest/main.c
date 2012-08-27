//
//  main.c
//  PointerTest
//
//  Created by Alexander Pirsig on 21.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#include <stdio.h>
#include <limits.h>

int main(int argc, const char * argv[])
{

    short i = 32767;
    printf("Size of i is: %zu\n",sizeof(i));
    printf("The value of i is: %d\n",i);
    printf("Smalles possible number in short is: %d\n",SHRT_MIN);
    printf("Biggest possible number in short is: %d\n",SHRT_MAX);
    printf("Smalles unsigned possible number in short is: %d\n",0);
    printf("Biggest unsigned possible number in short is: %d\n",USHRT_MAX);
    return 0;
}

