//
//  Fraction.h
//  DynamicBinding
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

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

