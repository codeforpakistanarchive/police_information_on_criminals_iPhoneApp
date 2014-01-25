//
//  RCCriminal.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCAuthority.h"

@interface RCCriminal : NSObject
@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) NSNumber * age;
@property (nonatomic, retain) NSString * color;
@property (nonatomic, retain) NSString * gender;
@property (nonatomic, retain) NSDate * addedOn;
@property (nonatomic, retain) NSString * identificationMark;
@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSNumber * isArrested;
@property (nonatomic, retain) RCAuthority *concernDepart;
@property (nonatomic, retain) NSSet *reportedHistory;

@end
