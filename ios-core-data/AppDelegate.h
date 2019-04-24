//
//  AppDelegate.h
//  ios-core-data
//
//  Created by Mac on 4/23/19.
//  Copyright © 2019 senapps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "CustomerMO+CoreDataClass.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistenceStoreCoordinator;

- (CustomerMO *)createCustomerMO;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end

