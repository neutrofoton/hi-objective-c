//
//  main.m
//  NSNumberSample
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Foundation/NSValue.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        //integer value
        intNumber = [NSNumber numberWithInteger:100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt);
        
        //long
        myNumber = [NSNumber numberWithLong:0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
        
        //char value
        myNumber = [NSNumber numberWithChar:'X'];
        NSLog(@"%c",[myNumber charValue]);
        
        //float value
        floatNumber = [NSNumber numberWithFloat:100.00];
        NSLog(@"%g",[floatNumber floatValue]);
        
        //double
        myNumber = [NSNumber numberWithDouble:12345e+15];
        NSLog(@"%lg",[myNumber doubleValue]);
        
        //wrong access
        NSLog(@"%i",[myNumber integerValue]);
        
        //Test two Number for equality
        if([intNumber isEqualToNumber:floatNumber]==YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        //Test if one Number is <, == or > second Number
        if([intNumber compare:myNumber]==NSOrderedAscending)
            NSLog(@"First number is less than seconf");
        
    }
    return 0;
}

