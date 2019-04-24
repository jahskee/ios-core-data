//
//  CustomerMO+CoreDataProperties.m
//  ios-core-data
//
//  Created by Mac on 4/24/19.
//  Copyright © 2019 senapps. All rights reserved.
//
//

#import "CustomerMO+CoreDataProperties.h"

@implementation CustomerMO (CoreDataProperties)

+ (NSFetchRequest<CustomerMO *> *)fetchRequest {
	return [NSFetchRequest fetchRequestWithEntityName:@"CustomerMO"];
}

@dynamic mi;
@dynamic firstname;
@dynamic lastname;

@end
