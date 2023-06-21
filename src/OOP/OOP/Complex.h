//
//  Complex.h
//  OOP
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject{

    double real;
    double imaginary;
}

@property double real, imaginary;

-(void) print;
-(void) setReal:(double)r andImaginary:(double)i;
-(Complex*) add:(Complex*) complex;

@end
