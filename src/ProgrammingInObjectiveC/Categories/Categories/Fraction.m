//
//  Fraction.m
//  Categories
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

@synthesize numerator;
@synthesize denominator;

-(void) print{
    
        
    NSLog(@"%i / %i",numerator, denominator);
    
    //NSLog(@"===============================");
    
}

-(void) setTo: (int)n over: (int)d {
    numerator = n;
    denominator = d;
}

-(double)convertToNum{
    if(denominator==0)
        return 1.0;
    else
        return (double)numerator/denominator;
}

@end
