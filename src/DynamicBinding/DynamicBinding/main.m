//
//  main.m
//  DynamicBinding
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Fraction.h"
#import "Complex.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //dynamic binding
        id dataValue;
        
        Fraction* f = [[Fraction alloc] init];
        Complex* c = [[Complex alloc] init];
        
        //id f = [[Fraction alloc] init];
        //id c = [[Complex alloc] init];
        
        [f setTo:2 over:5];
        [c setReal:10.0 andImaginary:2.5];
        
        //assign dataValue to fraction
        dataValue=f;
        [dataValue print];
        
        
        //now assign dataValue to complex
        dataValue = c;
        [dataValue print];
        
        
    }
    return 0;
}

