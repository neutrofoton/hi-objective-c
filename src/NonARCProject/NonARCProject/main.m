//
//  main.m
//  NonARCProject
//
//  Created by neutro code on 4/1/14.
//  Copyright (c) 2014 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    //@autoreleasepool {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
    // insert code here...
    NSLog(@"Hello, World!");
    
    
    NSString *mystring = [[NSString alloc]initWithFormat:@"Me"]; //ref count = 1
    [mystring retain]; //ref count = 2
    
    id myobj = mystring; //ref count = 2
    
    NSLog(@"Counting MyString  : %ld",[mystring retainCount]);
    
    NSLog(@"Counting MyObj  : %ld",[myobj retainCount]);
    
    
    [myobj release]; //ref count = 1
    
    NSLog(@"Counting MyString  : %ld",[mystring retainCount]);
    
    NSLog(@"Counting MyObj  : %ld",[myobj retainCount]);
    
    
    NSMutableArray *numbers = [NSMutableArray array];
    //create an array with number 0-9
    for(int i=0;i<10;++i){
        NSNumber *myNumber = [NSNumber numberWithInt:i];
        
        [numbers addObject:myNumber];
    }
    
    
    id obj = [numbers objectAtIndex:9];
    //[obj retain];
    //[numbers removeObjectAtIndex:9];
    
    //[obj release];
    NSLog(@"Counting  : %ld",[obj retainCount]);
    NSLog(@"Masih ada : %@",obj);
    
    
    [pool drain];
    
    
    //}
    
    return 0;
}

