//
//  AddressCard.h
//  CollectionComplexObject
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AddressCard : NSObject
{
    NSString *name, *email;
}

@property(nonatomic, copy) NSString *name, *email;

-(void) print;
-(void) setName:(NSString *)theName andEmail:(NSString*)theEmail;

-(NSComparisonResult) compareNames: (id) element;

@end
