//
//  Fraction+MathOps.m
//  Categories
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
-(Fraction*) add: (Fraction*) f{
    
    // To add two fractions:
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    
    Fraction *result = [[Fraction alloc] init];
    
    int resultNum, resultDenom;
    
    resultNum = (numerator * f.denominator) + (denominator * f.numerator);
    resultDenom = denominator * f.denominator;
    
    [result setTo: resultNum over: resultDenom];
        
    return result;
}
-(Fraction*) sub: (Fraction*) f{
    
    Fraction *result = [[Fraction alloc] init];
    
    int resultNum, resultDenom;
    
    resultNum = (numerator * f.denominator) - (denominator * f.numerator);
    resultDenom = denominator * f.denominator;
    
    [result setTo: resultNum over: resultDenom];
    
    return result;
}

-(Fraction*) mul: (Fraction*) f {
    
    Fraction *result = [[Fraction alloc] init];
    [result setTo: numerator * f.numerator over: denominator * f.denominator];
    
    return result; 
}

-(Fraction*) div: (Fraction*) f
{
    Fraction *result = [[Fraction alloc] init];
    [result setTo: numerator * f.denominator over: denominator * f.numerator];
    
    return result;
}
@end
