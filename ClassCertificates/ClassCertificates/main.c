//
//  main.c
//  ClassCertificates
//
//  Created by Alexander Pirsig on 17.08.12.
//  Copyright (c) 2012 Alexander Pirsig. All rights reserved.
//
#include <stdio.h>
#include <stdlib.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[])
{
    
    congratulateStudent("Steve", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Mike", "Python", 5);
    sleep(2);
    congratulateStudent("Ted", "iOS", 5);
    
    return 0;
}

