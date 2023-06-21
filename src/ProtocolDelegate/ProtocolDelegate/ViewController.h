//
//  ViewController.h
//  ProtocolDelegate
//
//  Created by neutro code on 11/14/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomerService.h"

@interface ViewController : UIViewController<CustomerServiceDelegate>
{
    
}
-(IBAction)btnClicked:(id)sender;

@end
