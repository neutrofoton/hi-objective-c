//
//  Fraction+MathOps.h
//  Categories
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction*) add: (Fraction*) f;
-(Fraction*) mul: (Fraction*) f;
-(Fraction*) sub: (Fraction*) f;
-(Fraction*) div: (Fraction*) f;

@end
