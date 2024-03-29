//
//  AppUtility.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Reachability.h"

#define AlertTitle @"Report Criminal"

#define Utility [AppUtility sharedAppUtility]
#define delegateObj (AppDelegate *)[[UIApplication sharedApplication] delegate]
#define GlobalContext (AppDelegate *)[[UIApplication sharedApplication] delegate]

#define AppBgColor        [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.png"]]
#define btnBgImage        [UIImage imageNamed:@"btn_a_nor1.png"]
#define btnBgImageBig        [UIImage imageNamed:@"btn_a_nor.png"]
#define btnBgImageSelected        [UIImage imageNamed:@"btn_c_over1.png"]

@interface AppUtility : NSObject


#pragma mark - Singleton Method
+(AppUtility *)sharedAppUtility;

#pragma mark - Custom Methods
-(NSString *)directoryPath;
-(NSDate *)currentDateTime;
-(NSDate *)getDateFromString:(NSString *)date;
-(NSString *)changeDateFormat:(NSDate *)date;
-(UIStoryboard *)currentStoryBoard;
-(BOOL)isInternetConnectionAlive;
-(NSString *)saveImageToDirectory:(UIImage *)image withName:(NSString *)name;
-(void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message;

@end
