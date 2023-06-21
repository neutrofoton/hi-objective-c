//
//  main.m
//  OOP
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Complex* c1 = [[Complex alloc] init];
        [c1 setReal:1 andImaginary:2];
        [c1 print];
        
        Complex* c2 = [[Complex alloc] init];
        [c2 setReal:3 andImaginary:3];
        [c2 print];
        
        Complex* c3 = [c1 add:c2];
        [c3 print];
        
    }
    return 0;
}

