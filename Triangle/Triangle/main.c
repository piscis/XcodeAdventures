//
//  main.c
//  Triangle
//
//  Created by Alexander Pirsig on 17.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#include <stdio.h>

float remainingAngel(float angleA, float angleB){
    
    return 180 - angleA - angleB;
}

int main(int argc, const char * argv[])
{

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngel(angleA, angleB);
    
    printf("The third angle is %.2f\n",angleC);
    
    return 0;
}

