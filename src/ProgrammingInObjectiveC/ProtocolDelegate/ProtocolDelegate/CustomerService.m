//
//  CustomerService.m
//  ProtocolDelegate
//
//  Created by neutro code on 11/14/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "CustomerService.h"

@implementation CustomerService

@synthesize delegate;

-(void) saveCustomer:(NSString *)name
{
    //save the delegate
    [[self delegate] didSaveCustomer:name];
}

@end
