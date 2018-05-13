//
//  main.m
//  GobalVariable
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Foo.h"

int gGlobalVar = 5;

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Global variable value : %i",gGlobalVar);
        
        Foo* f = [[Foo alloc]init];
        [f setGlobalVariable:9];
        
        NSLog(@"Global variable value : %i",gGlobalVar);
        
        
        
        NSLog(@"-------------------------");
        
        Foo* f2 = [[Foo allocF] init];
        Foo* f3 = [[Foo allocF] init];
        
        NSLog(@"Count with allocF = %i",[Foo count]);
    }
    return 0;
}

