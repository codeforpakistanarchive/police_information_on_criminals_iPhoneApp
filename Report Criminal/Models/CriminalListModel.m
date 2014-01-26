//
//  CriminalListModel.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalListModel.h"

@implementation CriminalListModel
-(NSArray *)getAllCriminals:(int)number
{
 
    // Record 1
    RCCriminal *criminal        = [[RCCriminal alloc] init];
    criminal.firstName          = @"Ali";
    criminal.lastName           = @"Raza";
    criminal.age                = [NSNumber numberWithInt:23];
    criminal.gender             = @"Male";
    criminal.color              = @"moderate brown";
    criminal.identificationMark = @"Wound mark on left eye";
    criminal.crime              = @"Robbery in jewellery shop";
    criminal.photoPath          = @"criminal1.png";
    criminal.rating             = [NSNumber numberWithInt:4];
    
    RCAuthority *authority      = [[RCAuthority alloc] init];
    authority.name              = @"Police";
    authority.phoneNumber       = @"123456";
    
    RCReported *reportedHistory = [[RCReported alloc] init];
    reportedHistory.latitude   = [NSNumber numberWithFloat:31.470436];
    reportedHistory.longitude    = [NSNumber numberWithFloat:74.410786];
    NSString *date              = @"20-06-2014";
    NSDate *reportedDate        = [Utility getDateFromString:date];
    reportedHistory.reportedDate = reportedDate;
    
    RCReported *reportedHistory2 = [[RCReported alloc] init];
    reportedHistory2.latitude   = [NSNumber numberWithFloat:31.471435];
    reportedHistory2.longitude    = [NSNumber numberWithFloat:74.411796];
    NSString *date2 = @"20-06-2014";
    NSDate *reportedDate2         = [Utility getDateFromString:date2];
    reportedHistory2.reportedDate = reportedDate2;
    
    RCReported *reportedHistory3  = [[RCReported alloc] init];
    reportedHistory3.latitude    = [NSNumber numberWithFloat:31.472400];
    reportedHistory3.longitude     = [NSNumber numberWithFloat:74.412800];
    NSString *date3               = @"20-06-2013";
    NSDate *reportedDate3         = [Utility getDateFromString:date3];
    reportedHistory3.reportedDate = reportedDate3;
    
    criminal.concernDepart = authority;
    criminal.reportedHistory = [NSSet setWithObjects:reportedHistory, reportedHistory2, reportedHistory3, nil];
    
    // Record 2
    RCCriminal *criminal2        = [[RCCriminal alloc] init];
    criminal2.firstName          = @"Mohsan";
    criminal2.lastName           = @"Ali";
    criminal2.age                = [NSNumber numberWithInt:23];
    criminal2.gender             = @"Male";
    criminal2.color              = @"white";
    criminal2.identificationMark = @"Wound mark on left hand";
    criminal2.crime              = @"Robbery in genral store";
    criminal2.photoPath          = @"criminal2.png";
    criminal2.rating             = [NSNumber numberWithInt:2];
    
    RCAuthority *authority2      = [[RCAuthority alloc] init];
    authority2.name              = @"Police";
    authority2.phoneNumber       = @"123456";
    
    RCReported *reportedHistory2a = [[RCReported alloc] init];
    reportedHistory2a.latitude   = [NSNumber numberWithFloat:31.471415];
    reportedHistory2a.longitude    = [NSNumber numberWithFloat:74.411793];
    NSString *date2a              = @"16-05-2013";
    NSDate *reportedDate2a       = [Utility getDateFromString:date2a];
    reportedHistory2a.reportedDate = reportedDate2a;
    
    RCReported *reportedHistory2b = [[RCReported alloc] init];
    reportedHistory2b.latitude   = [NSNumber numberWithFloat:31.472425];
    reportedHistory2b.longitude    = [NSNumber numberWithFloat:74.412712];
    NSString *date2b = @"30-07-2013";
    NSDate *reportedDate2b         = [Utility getDateFromString:date2b];
    reportedHistory2b.reportedDate = reportedDate2b;
    
    RCReported *reportedHistory2c  = [[RCReported alloc] init];
    reportedHistory2c.latitude    = [NSNumber numberWithFloat:31.473430];
    reportedHistory2c.longitude     = [NSNumber numberWithFloat:74.413825];
    NSString *date2c               = @"26-09-2013";
    NSDate *reportedDate2c         = [Utility getDateFromString:date2c];
    reportedHistory2c.reportedDate = reportedDate2c;
    
    RCReported *reportedHistory2d = [[RCReported alloc] init];
    reportedHistory2d.latitude   = [NSNumber numberWithFloat:31.474450];
    reportedHistory2d.longitude    = [NSNumber numberWithFloat:74.414730];
    NSString *date2d              = @"14-10-2013";
    NSDate *reportedDate2d       = [Utility getDateFromString:date2d];
    reportedHistory2d.reportedDate = reportedDate2d;
    
    RCReported *reportedHistory2e = [[RCReported alloc] init];
    reportedHistory2e.latitude   = [NSNumber numberWithFloat:31.475305];
    reportedHistory2e.longitude    = [NSNumber numberWithFloat:74.415803];
    NSString *date2e = @"11-08-20113";
    NSDate *reportedDate2e         = [Utility getDateFromString:date2e];
    reportedHistory2e.reportedDate = reportedDate2e;
    
    criminal2.concernDepart = authority2;
    criminal2.reportedHistory = [NSSet setWithObjects:reportedHistory2a, reportedHistory2b, reportedHistory2c,reportedDate2d, reportedDate2e, nil];

    // Record 3
    RCCriminal *criminal3        = [[RCCriminal alloc] init];
    criminal3.firstName          = @"Masood";
    criminal3.lastName           = @"Bhatti";
    criminal3.age                = [NSNumber numberWithInt:23];
    criminal3.gender             = @"Male";
    criminal3.color              = @"moderate brown";
    criminal3.identificationMark = @"Mole on chin";
    criminal3.crime              = @"Murder";
    criminal3.photoPath          = @"criminal3.png";
    criminal3.rating             = [NSNumber numberWithInt:5];
    
    RCAuthority *authority3      = [[RCAuthority alloc] init];
    authority3.name              = @"CIA";
    authority3.phoneNumber       = @"123456";
    
    RCReported *reportedHistory3a = [[RCReported alloc] init];
    reportedHistory3a.latitude   = [NSNumber numberWithFloat:31.476450];
    reportedHistory3a.longitude    = [NSNumber numberWithFloat:74.416500];
    NSString *date3a              = @"22-08-2013";
    NSDate *reportedDate3a        = [Utility getDateFromString:date3a];
    reportedHistory3a.reportedDate = reportedDate3a;
    
    RCReported *reportedHistory3b = [[RCReported alloc] init];
    reportedHistory3b.latitude   = [NSNumber numberWithFloat:31.477540];
    reportedHistory3b.longitude    = [NSNumber numberWithFloat:74.417553];
    NSString *date3b = @"02-10-2013";
    NSDate *reportedDate3b         = [Utility getDateFromString:date3b];
    reportedHistory3b.reportedDate = reportedDate3b;
    
    
    criminal3.concernDepart = authority3;
    criminal3.reportedHistory = [NSSet setWithObjects:reportedHistory3a, reportedHistory3b, nil];

    // Record 4
    RCCriminal *criminal4        = [[RCCriminal alloc] init];
    criminal4.firstName          = @"Aliya";
    criminal4.lastName           = @"Razaq";
    criminal4.age                = [NSNumber numberWithInt:23];
    criminal4.gender             = @"Female";
    criminal4.color              = @"black";
    criminal4.identificationMark = @"No mark";
    criminal4.crime              = @"Abuse";
    criminal4.photoPath          = @"criminal4.png";
    criminal4.rating             = [NSNumber numberWithInt:1];
    
    RCAuthority *authority4      = [[RCAuthority alloc] init];
    authority4.name              = @"Police";
    authority4.phoneNumber       = @"123456";
    
    RCReported *reportedHistory4a = [[RCReported alloc] init];
    reportedHistory4a.latitude   = [NSNumber numberWithFloat:31.478600];
    reportedHistory4a.longitude    = [NSNumber numberWithFloat:74.418355];
    NSString *date4a              = @"01-01-2014";
    NSDate *reportedDate4a        = [Utility getDateFromString:date4a];
    reportedHistory4a.reportedDate = reportedDate4a;
    
//    RCReported *reportedHistory4b = [[RCReported alloc] init];
//    reportedHistory4b.longitude   = [NSNumber numberWithFloat:355.595];
//    reportedHistory4b.latitude    = [NSNumber numberWithFloat:444.493];
//    NSString *date4b = @"03-01-2014";
//    NSDate *reportedDate4b         = [Utility getDateFromString:date4b];
//    reportedHistory4b.reportedDate = reportedDate4b;
//    
//    RCReported *reportedHistory4c  = [[RCReported alloc] init];
//    reportedHistory4c.longitude    = [NSNumber numberWithFloat:355.595];
//    reportedHistory4c.latitude     = [NSNumber numberWithFloat:444.493];
//    NSString *date4c               = @"31-01-2014";
//    NSDate *reportedDate4c         = [Utility getDateFromString:date4c];
//    reportedHistory4c.reportedDate = reportedDate4c;
    
    criminal4.concernDepart = authority4;
    criminal4.reportedHistory = [NSSet setWithObjects:reportedHistory4a, nil];

    NSArray *criminals;
    switch (number) {
        case 0:{
            criminals = [[NSArray alloc] initWithObjects:criminal,criminal2,criminal3,criminal4, nil];
            break;
        }case 1:{
            criminals = [[NSArray alloc] initWithObjects:criminal2,criminal,criminal3,criminal4, nil];
            break;
        }case 2:{
            criminals = [[NSArray alloc] initWithObjects:criminal3,criminal,criminal2,criminal4, nil];
            break;
        }case 3:{
            criminals = [[NSArray alloc] initWithObjects:criminal,criminal2,criminal3,criminal4, nil];
            break;
        }
            
        default:
            break;
    }
    
    return criminals;
    
    
    
    
    
}

@end
