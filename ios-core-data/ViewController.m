//
//  ViewController.m
//  ios-core-data
//
//  Created by Mac on 4/23/19.
//  Copyright © 2019 senapps. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "CustomerMO+CoreDataClass.h"

@interface ViewController ()
@property (nonatomic) AppDelegate *appDelegate;
@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate =  (AppDelegate*) [[UIApplication sharedApplication] delegate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)addCustomerButton:(id)sender {
    CustomerMO *c = [self.appDelegate createCustomerMO];
    c.firstname = self.firstName.text;
    c.lastname = self.lastName.text;
    c.email = self.email.text;
    [self.appDelegate saveContext];
}
@end
