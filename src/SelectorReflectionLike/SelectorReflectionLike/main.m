//
//  main.m
//  SelectorReflectionLike
//
//  Created by neutro code on 11/3/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "Car.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        Square *mySquare = [[Square alloc] init];
        
        //isMemberOf -> exactly the same type
        if([mySquare isMemberOfClass:[Square class]] == YES) //YES
            NSLog(@"mySquare is a member of Square class");
        
        if([mySquare isMemberOfClass:[Rectangle class]]==YES) //NO
            NSLog(@"mySquare is a member of Rectangle class");
        
        if([mySquare isMemberOfClass:[NSObject class]]==YES) //NO
            NSLog(@"mySquare is a member of NSObject class");
        

        NSLog(@"-------------------------------------------\n");
    
        //isKindOf -> exactly the same type or in OOP hierarchical.
        if([mySquare isKindOfClass:[Square class]] == YES) //YES
            NSLog(@"mySquare is a kind of Square class");
        
        if([mySquare isKindOfClass:[Rectangle class]]==YES) //YES
            NSLog(@"mySquare is a kind of Rectangle class");
        
        if([mySquare isKindOfClass:[NSObject class]]==YES) //YES
            NSLog(@"mySquare is a kind of NSObject class");
        
        NSLog(@"-------------------------------------------\n");
        
        //responsTo -> has instance method of
        if([mySquare respondsToSelector:@selector(setSide:)]==YES) //YES
            NSLog (@"mySquare responds to setSide: method");
        
        if([mySquare respondsToSelector:@selector(setWidth:andHeight:)]==YES) //YES
            NSLog (@"mySquare responds to setWidth:andHeight: method");
        
        if([mySquare respondsToSelector:@selector(alloc)]==YES) //NO => static (+)
            NSLog (@"mySquare responds to alloc method");
        
        NSLog(@"-------------------------------------------\n");
        

        //instanceResponseTo
        if([Rectangle instancesRespondToSelector:@selector(setSide:)]==YES) //NO
            NSLog(@"Instance of Rectangle respond to setSide: method");
        
        if([Square instancesRespondToSelector:@selector(setSide:)]==YES) //YES
            NSLog(@"Instance of Square respond to setSide: method");
        
        
        NSLog(@"-------------------------------------------\n");
        
        //isSubclass
        if([Square isSubclassOfClass:[Rectangle class]]==YES) //YES
            NSLog(@"Square is a subclass of a rectangle");
        
        
         NSLog(@"-------------------------------------------\n");
        NSLog(@"\n\n");
        
        Car *car = [[Car alloc] init];
        car.model= @"honda jazz";
        [car drive];
        
        if(NSClassFromString(@"Car")==[Car class])
            NSLog(@"String \"Car\" can be conveted to class type");
    
    }
    
    return 0;
}

