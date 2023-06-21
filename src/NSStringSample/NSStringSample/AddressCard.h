//
//  AddressCard.h
//  NSStringSample
//
//  Created by neutro code on 11/4/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject
{
    NSString *name;
    NSString *email;
}

-(void) setName: (NSString*) theName;
-(void) setEmail: (NSString*) theEmail;

-(NSString*) name;
-(NSString*) email;

-(void) print;
@end
