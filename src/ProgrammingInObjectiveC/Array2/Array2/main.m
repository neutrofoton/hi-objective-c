//
//  main.m
//  Array2
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *numbers = [NSMutableArray array];
        NSNumber *myNumber;
        int i;
        
        //create an array with number 0-9
        for(i=0;i<10;++i){
            myNumber = [NSNumber numberWithInt:i];
            
            [numbers addObject:myNumber];
        }
        
        //sequence through the array
        for(i = 0; i<10; ++i){
            myNumber = [numbers objectAtIndex:i];
            NSLog(@"%@", myNumber);
        }
        
        //display with single NSLog
        NSLog(@"----- with single NSLog ------------------");
        NSLog(@"%@",numbers);
    }
    return 0;
}

