//
//  main.m
//  Array1
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *monthNames = [NSArray arrayWithObjects:
                               @"January",
                               @"February",
                               @"March",
                               @"April",
                               @"May",
                               @"June",
                               @"July",
                               @"August",
                               @"September",
                               @"October",
                               @"November",
                               @"December",
                               nil ];
        NSLog(@"Month       Name");
        NSLog(@"------      -----");
        
        for (int i=0; i<12; ++i) {
            NSLog(@" %2i        %@",i+1,[monthNames objectAtIndex:i]);
        }
                                    
        
    }
    return 0;
}

