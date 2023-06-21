//
//  Complex.m
//  OOP
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real,imaginary;

-(void) print{
    NSLog(@" %g + %gi",real, imaginary);
}

-(void) setReal:(double)r andImaginary:(double)i {
    real = r;
    imaginary = i;
}

-(Complex*) add:(Complex*) complex{
    
    Complex* result = [[Complex alloc] init];
    
    double r = real + [complex real];
    double i = imaginary + [complex imaginary];
    
    [result setReal:r andImaginary:i];
    
    return result;
}


@end
