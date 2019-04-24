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
@property (weak, nonatomic) IBOutlet UILabel *persistedData;

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *mi;
@property (weak, nonatomic) IBOutlet UITextField *lastName;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate =  (AppDelegate*) [[UIApplication sharedApplication] delegate];
    [self updateCustomerToList];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (IBAction)addCustomerButton:(id)sender {
    CustomerMO *c = [self.appDelegate createCustomerMO];
    c.firstname = self.firstName.text;
    c.mi = self.mi.text;
    c.lastname = self.lastName.text;
    [self.appDelegate saveContext];
    [self updateCustomerToList];
    [self clearEntryForm];
}

- (IBAction)deleteListButton:(id)sender {
    NSManagedObjectContext *moc = self.appDelegate.managedObjectContext;
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"CustomerMO"];
    
    NSError *error = nil;
    NSArray *results = [moc executeFetchRequest:request error:&error];
    if (!results) {
        NSLog(@"Error fetching Person objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    
    for (CustomerMO *c in results) {
        [moc deleteObject:c];
    }
    [self updateCustomerToList];
}

- (void) clearEntryForm {
    self.firstName.text = @"";
    self.lastName.text = @"";
    self.mi.text = @"";
    [self.firstName becomeFirstResponder];
}

- (void) updateCustomerToList {
    NSManagedObjectContext *moc = self.appDelegate.managedObjectContext;
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"CustomerMO"];
    
    NSError *error = nil;
    NSArray *results = [moc executeFetchRequest:request error:&error];
    if (!results) {
        NSLog(@"Error fetching CustomerMO objects: %@\n%@", [error localizedDescription], [error userInfo]);
        abort();
    }
    
    NSMutableString *buffer = [NSMutableString stringWithString:@""];
    for(CustomerMO *c in results) {
        [buffer appendFormat:@"\n%@ %@. %@", c.firstname, c.mi, c.lastname, nil];
    }
    
    self.persistedData.text = buffer;
    [self.firstName becomeFirstResponder];
}



@end
