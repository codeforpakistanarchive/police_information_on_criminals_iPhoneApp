//
//  RCReported.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCCriminal.h"

@interface RCReported : NSObject

@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSString * coordinates;
@property (nonatomic, retain) NSDate * reportedDate;
@property (nonatomic, retain) RCCriminal *criminal;
@end
