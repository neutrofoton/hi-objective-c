//
//  Worker.m
//  Block
//
//  Created by neutro code on 11/7/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "Worker.h"

@implementation Worker

+(void)iterateFromOneTo:(int)limit withBlock:( int (^)(int,int))block {
    for (int i = 1; i <= limit; ++i) {
        NSLog(@"Iteration %i => %i",i,block(i,2));
    }
}

+(void)iterateWithTypeDefBlockFromOneTo:(int)limit withBlock:(MultiplyOperationBlock)block{
    
    for (int i = 1; i <= limit; ++i) {
        NSLog(@"Iteration with TypeDef %i => %i",i,block(i,2));
    }
}

+(ComputationalBlock) blockFactory:(int) value {
    
    ComputationalBlock block = ^(int x){
      
        return (int)pow(x, value);
    };
    
    //return block; //Don't do this!!
    
    //return [[block copy] autorelease];
    return [block copy];
}

@end
