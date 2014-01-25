//
//  Criminal.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class ConcernAuthority, Reported;

@interface Criminal : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * color;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSDate * addedOn;
@property (nonatomic, retain) NSString * identificationMark;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSNumber * isArrested;
@property (nonatomic, retain) ConcernAuthority *concernDepart;
@property (nonatomic, retain) NSSet *reportedHistory;
@end

@interface Criminal (CoreDataGeneratedAccessors)

- (void)addReportedHistoryObject:(Reported *)value;
- (void)removeReportedHistoryObject:(Reported *)value;
- (void)addReportedHistory:(NSSet *)values;
- (void)removeReportedHistory:(NSSet *)values;

@end
