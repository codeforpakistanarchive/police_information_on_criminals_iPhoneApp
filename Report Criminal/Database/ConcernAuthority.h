//
//  ConcernAuthority.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Criminal;

@interface ConcernAuthority : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * address;
@property (nonatomic, retain) NSString * phoneNumber;
@property (nonatomic, retain) NSSet *criminals;
@end

@interface ConcernAuthority (CoreDataGeneratedAccessors)

- (void)addCriminalsObject:(Criminal *)value;
- (void)removeCriminalsObject:(Criminal *)value;
- (void)addCriminals:(NSSet *)values;
- (void)removeCriminals:(NSSet *)values;

@end
