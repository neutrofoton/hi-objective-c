//
//  AddressCard.m
//  Property
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

-(void)print
{
    NSLog (@"====================================");
    NSLog (@"|                                  |");
    NSLog (@"|   %-31s |",[name UTF8String]);
    NSLog (@"|   %-31s |",[email UTF8String]);
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"|                                  |");
    NSLog (@"====================================");
}

-(void) setName:(NSString *)theName andEmail:(NSString*)theEmail{
    
    [self setName: theName];
    [self setEmail: theEmail];
}
@end
