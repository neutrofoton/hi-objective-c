//
//  ViewController.m
//  ProtocolDelegate
//
//  Created by neutro code on 11/14/12.
//  Copyright (c) 2012 neutro code. All rights reserved.
//

#import "ViewController.h"
#import "CustomerService.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)btnClicked:(id)sender
{
    //NSLog(@"Hello");
    CustomerService *customerService = [[CustomerService alloc]init];
    customerService.delegate = self;
    [customerService saveCustomer:@"Jun"];
}

-(void) didSaveCustomer:(NSString *)name
{
    NSLog(@"%@",name);
}
@end
