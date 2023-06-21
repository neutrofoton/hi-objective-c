//
//  main.m
//  InitializationMethod
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Fraction* f = [[Fraction alloc] initWith:1 :2];
        [f print];
        
    }
    return 0;
}

