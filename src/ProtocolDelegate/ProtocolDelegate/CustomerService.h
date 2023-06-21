//
//  CustomerService.h
//  ProtocolDelegate
//
//  Created by neutro code on 11/14/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomerServiceDelegate.h"

@interface CustomerService : NSObject
{
    
}

@property (nonatomic, retain) id<CustomerServiceDelegate> delegate;

-(void) saveCustomer:(NSString*)name;
@end
