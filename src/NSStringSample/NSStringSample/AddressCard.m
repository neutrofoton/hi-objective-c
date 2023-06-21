//
//  AddressCard.m
//  NSStringSample
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

-(void) setName: (NSString*) theName{
    
    //name = theName; //=> bad way
    
    if (name!=theName) {
        name = [[NSString alloc] initWithString:theName];
        //name  = [[NSString stringWithString:theName];
    }
    
}

-(void) setEmail: (NSString*) theEmail{
    
    if(email!=theEmail){
        
        email = [[NSString alloc] initWithString:theEmail];
        //email = [[NSString stringWithString:theEmail];
    }
}

-(NSString*) name{
    return name;
}

-(NSString*) email{
    return email;
}

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
/*
-(void) dealloc {
    [name release];
    [email release];
    [super dealloc];
}
*/
@end
