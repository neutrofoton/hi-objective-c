//
//  main.m
//  NSStringSample
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        
        [card1 print];
        
    }
    return 0;
}

