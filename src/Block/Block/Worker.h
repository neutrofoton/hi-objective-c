//
//  Worker.h
//  Block
//
//  Created by neutro code on 11/7/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef int (^MultiplyOperationBlock)(int,int);
typedef int (^ComputationalBlock)(int);

@interface Worker : NSObject
{
    
}

+(void)iterateFromOneTo:(int)limit withBlock:( int (^)(int,int))block;
+(void)iterateWithTypeDefBlockFromOneTo:(int)limit withBlock:(MultiplyOperationBlock)block;

+(ComputationalBlock) blockFactory:(int) value;
@end
