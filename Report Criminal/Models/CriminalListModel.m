//
//  CriminalListModel.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalListModel.h"

@implementation CriminalListModel
-(NSArray *)getAllCriminals
{
 
    RCCriminal *criminal = [[RCCriminal alloc] init];
    criminal.firstName = @"Ali";
    criminal.lastName  = @"Raza";
    criminal.age       = [NSNumber numberWithInt:23];
    
    RCAuthority *authority  = [[RCAuthority alloc] init];
    authority.name          = @"Police";
    authority.phoneNumber   = @"123456";
    
    RCReported *reportedHistory = [[RCReported alloc] init];
    reportedHistory.longitude   = [NSNumber numberWithFloat:355.595];
    reportedHistory.latitude    = [NSNumber numberWithFloat:444.493];
    NSString *date = @"20-06-2014";
    NSDate *reportedDate = [Utility getDateFromString:date];
    reportedHistory.reportedDate = reportedDate;
    
    RCReported *reportedHistory2 = [[RCReported alloc] init];
    reportedHistory2.longitude   = [NSNumber numberWithFloat:355.595];
    reportedHistory2.latitude    = [NSNumber numberWithFloat:444.493];
    NSString *date2 = @"20-06-2014";
    NSDate *reportedDate2 = [Utility getDateFromString:date2];
    reportedHistory2.reportedDate = reportedDate2;
    
    RCReported *reportedHistory3 = [[RCReported alloc] init];
    reportedHistory3.longitude   = [NSNumber numberWithFloat:355.595];
    reportedHistory3.latitude    = [NSNumber numberWithFloat:444.493];
    NSString *date3 = @"20-06-2014";
    NSDate *reportedDate3 = [Utility getDateFromString:date3];
    reportedHistory3.reportedDate = reportedDate3;
    
    criminal.concernDepart = authority;
    criminal.reportedHistory = [NSSet setWithObjects:reportedHistory, reportedHistory2, reportedHistory3, nil];
    
    NSArray *criminals = [[NSArray alloc] initWithObjects:criminal, nil];
    return criminals;
    
    
    
    
    
}

@end
