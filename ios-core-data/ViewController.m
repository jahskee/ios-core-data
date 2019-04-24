//
//  ViewController.m
//  ios-core-data
//
//  Created by Mac on 4/23/19.
//  Copyright © 2019 senapps. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (nonatomic) AppDelegate *appDelegate;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appDelegate =  (AppDelegate*) [[UIApplication sharedApplication] delegate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
