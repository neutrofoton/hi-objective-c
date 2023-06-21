//
//  main.m
//  Block
//
//  Created by neutro code on 11/7/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Worker.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *date = [NSDate date];
        
        //======= BLOCK WITHOUT PARAMETER =============
        //variable now assigned with block
        void (^now)(void) = ^{
            NSLog(@"The date and time is %@", date);
        };
        
        //OR
        //void (^now)(void) = ^(){
        //    NSLog(@"The date and time is %@", date);
        //};
        
        //OR
        //void (^now)(void) = ^(void){
        //    NSLog(@"The date and time is %@", date);
        //};
        
        //call now
        now();
        
        //======= BLOCK PARAMETER ==================
        int (^triple)(int) = ^(int number){
            
            return 3 * number;
        };
        
        int value = triple(4);
        NSLog(@"Value triple of %i is %i",3,value);
        
        int (^multiply)(int,int) = ^(int x, int y){
            return x*y;
        };
        
        value  = multiply(7,3);
        NSLog(@"Multiply %i and %i is %i",7,3,value);
        
        //Inline
        //[Worker iterateFromOneTo:5 withBlock:^(int x, int y){
          
        //    return x * y;
        //}];
        
        [Worker iterateFromOneTo:6 withBlock:multiply];
        
        NSLog(@" ----------------- ");
        [Worker iterateWithTypeDefBlockFromOneTo:7 withBlock:multiply];
        
        NSLog(@" ----------------- ");
        int variable = 3;
        [Worker iterateWithTypeDefBlockFromOneTo:4 withBlock:^(int x, int y){
           
            //variable = variable + 1; //Compile error!!.
                                     //Variable accessed inside block is readonly.
                                    //This happens because a block effectively gets a const copy of stack (local) variables that it uses.
            
            return (x * y)+variable;
        }];
        
        NSLog(@" ------ Mutable variable inside block ----------- ");
        //mark varible to be mutable inside block
        __block int variableToBeUsedByBlock = 0;
       
        [Worker iterateWithTypeDefBlockFromOneTo:4 withBlock:^(int x, int y){
            
          variableToBeUsedByBlock = variableToBeUsedByBlock + 1;
            
           return (x * y)+variableToBeUsedByBlock;
        }];
        
        NSLog(@" ------ Block Factory ----------- ");
        ComputationalBlock compBlock = [Worker blockFactory:2];
        NSLog(@"Calculate from factory result %i",compBlock(2));
        NSLog(@"Calculate from factory result %i",compBlock(3));
        
        
    }
    return 0;
}

