//
//  main.m
//  SynthesizedAccessor
//
//  Created by neutro code on 11/1/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        //input data;
        int n,d;
        
        NSLog(@"Enter numerator :");
        scanf("%i",&n);
        
        NSLog(@"Enter denominator :");
        scanf("%i",&d);
        
        
        
        Fraction* fraction = [[Fraction alloc] init];
        
        
        [fraction setNumerator: 1];
        [fraction setDenominator:2];
        
        [fraction setTo:n over:d];
        
        //fraction.numerator = 3;
        //fraction.denominator = 4;
        
        [fraction print];
        
        
        
        Fraction* fraction2 = [[Fraction alloc] init];
        
        
        [fraction2 setNumerator: 4];
        [fraction2 setDenominator:5];
        
        [fraction2 setTo:18 over:7];
        
        [fraction2 print];
                
    }
    return 0;
}

