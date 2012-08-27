//
//  main.c
//  TimeChallange
//
//  Created by Alexander Pirsig on 23.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    /*
    long secondesSince1970 = time(NULL);
    printf("It has been %ld seconds since 1970\n", secondesSince1970);
    struct tm now;
    localtime_r(&secondesSince1970, &now);
    
    printf("The time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    */
    time_t now = time(NULL);
    
    struct tm now_tm = *localtime(&now);
    struct tm then_tm = now_tm;
    
    time_t noww = time(0);
    time_t now_plus_50_seconds = noww + 50;
    time_t now_plus_2_hours = noww + 7200;
    
    then_tm.tm_sec += 40000000;
    mktime(&then_tm);
    
    int year = (then_tm.tm_year+1900);
    
    printf("The date is: %d-%d-%d\n",then_tm.tm_mon,then_tm.tm_mday, year);
    printf("%s\n",asctime(&then_tm));
    
    return 0;
}

