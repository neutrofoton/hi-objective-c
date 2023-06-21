//
//  Fraction.h
//  SynthesizedAccessor
//
//  Created by neutro code on 11/1/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Fraction.h"

@interface Fraction : NSObject{
    
    int numerator;
    int denominator;
}

@property int numerator;
@property int denominator;

-(void) print;
-(void) setTo: (int)n over: (int)d;
-(double)convertToNum;

@end
