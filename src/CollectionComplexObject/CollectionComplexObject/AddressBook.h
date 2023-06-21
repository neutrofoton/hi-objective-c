//
//  AddressBook.h
//  CollectionComplexObject
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property(nonatomic, copy) NSString *bookName;
@property(nonatomic,strong) NSMutableArray *book;

-(id) initWithName: (NSString*) name;

-(void) addCard: (AddressCard*) theCard;
-(void) removeCard: (AddressCard *) theCard;

-(NSUInteger) entries;
-(void) list;
-(AddressCard*) lookup: (NSString*)theName;

-(void) sort;
@end
