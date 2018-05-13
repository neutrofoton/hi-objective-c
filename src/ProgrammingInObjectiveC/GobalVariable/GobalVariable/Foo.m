//
//  Foo.m
//  GobalVariable
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Foo.h"

static int gCounter = 0;

@implementation Foo

+(Foo*) allocF{
    
    
    extern int gCounter; //extern can be omitted, because in the same module/file
    
    ++gCounter;
    
    return [Foo alloc];
}

+(int)count{
    
    extern int gCounter;
    
    return gCounter;
}

-(void)setGlobalVariable:(int)val{
    
    extern int gGlobalVar;
    gGlobalVar = val;
}

@end
