//
//  CustomerMO+CoreDataProperties.h
//  ios-core-data
//
//  Created by Mac on 4/24/19.
//  Copyright © 2019 senapps. All rights reserved.
//
//

#import "CustomerMO+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CustomerMO (CoreDataProperties)

+ (NSFetchRequest<CustomerMO *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *email;
@property (nullable, nonatomic, copy) NSString *firstname;
@property (nullable, nonatomic, copy) NSString *lastname;

@end

NS_ASSUME_NONNULL_END
