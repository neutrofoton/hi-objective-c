//
//  main.m
//  CollectionComplexObject
//
//  Created by neutro code on 11/6/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc] initWithName: @"Linda’s Address Book"];
        NSLog (@"Entries in address book after creation: %i", [myBook entries]);
        
        // Now set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        // Add the cards to the address book
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog (@"Entries in address book after adding cards: %i", [myBook entries]);
        // List all the entries in the book now
        
        [myBook list];
        
        NSLog(@"********   Look up by person name ******** ");
        
        AddressCard *foundCard;
        
        // Look up a person by name
                
        NSLog (@"Haibo Zhang");
        foundCard = [myBook lookup: @"Haibo Zhang"];
        
        if(foundCard==nil)
            NSLog(@"Not found!");
        else
            [foundCard print];
        
        
        NSLog (@"Stephen Kochan");
        foundCard = [myBook lookup: @"stephen kochan"];
        
        if(foundCard==nil)
            NSLog(@"Not found!");
        else
            [foundCard print];
        

        NSLog(@"********   Removing  Stephen Kochan ******** ");
        [myBook removeCard: foundCard];
        [myBook list]; // verify it’s gone
        
        NSLog(@"&&&&&&&&&&&&&&&&&&& Sorting &&&&&&&&&&&&&&&&&&");
        [myBook sort];
        [myBook list];
        
    }
    return 0;
}

