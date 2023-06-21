//
//  AddressBook.m
//  CollectionComplexObject
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(id) initWithName: (NSString*) name{
    
    self = [super init];
    
    if(self){
        bookName = [NSString stringWithString:name];
        book = [NSMutableArray array];
    }
    
    return self;
}
-(id) init{
    
    return [self initWithName:@"NoName"];
}

-(void) addCard: (AddressCard*) theCard{
    
    [book addObject:theCard];
}

-(void) removeCard: (AddressCard *) theCard {
    
    [book removeObjectIdenticalTo: theCard]; }

-(NSUInteger) entries{
    return [book count];
}

-(void) list{
    
    NSLog(@" ========= Content of : %@ =========",bookName);
    
    for (AddressCard *theCard in book) {
        
        NSLog(@"%-20s           %-32s",
                [theCard.name  UTF8String],
                [[theCard email] UTF8String]
              );
        
    }
    
    NSLog(@"=====================================");
}

-(AddressCard*) lookup: (NSString*)theName{
    
    for(AddressCard* nextCard in [self book]){
        if([[nextCard name] caseInsensitiveCompare:theName]==NSOrderedSame)
            return nextCard;
    }
    
    return nil;
}

-(void) sort{
    
    [book sortUsingSelector :@selector(compareNames:)];
    
}
@end
