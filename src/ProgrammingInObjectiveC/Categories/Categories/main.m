//
//  main.m
//  Categories
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Fraction *a = [[Fraction alloc] init];
        Fraction *b = [[Fraction alloc] init];
        Fraction *result;
        
        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        
        [a print];
        NSLog (@" +" );
        [b print];
        NSLog (@"-----");
        
        result = [a add: b];
        
        [result print];
        NSLog (@"\n");
        
        //[result release];
        
    }
    return 0;
}

