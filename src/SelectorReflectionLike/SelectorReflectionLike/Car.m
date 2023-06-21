//
//  Car.m
//  SelectorReflectionLike
//
//  Created by neutro code on 11/1/15.
//  Copyright © 2015 neutro code. All rights reserved.
//

#import "Car.h"

@implementation Car {
    //PRIVATE instance variable
    double odometer;
}

-(void)drive{
    NSLog(@"Driving a %@ ...... ", self.model);
}
@end
