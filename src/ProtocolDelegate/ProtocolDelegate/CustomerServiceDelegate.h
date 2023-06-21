//
//  CustomerServiceDelegate.h
//  ProtocolDelegate
//
//  Created by neutro code on 11/16/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol CustomerServiceDelegate <NSObject>


-(void) didSaveCustomer:(NSString*) name;

@end
