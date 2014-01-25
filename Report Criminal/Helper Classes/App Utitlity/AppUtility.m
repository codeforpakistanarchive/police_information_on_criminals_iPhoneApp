//
//  AppUtility.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "AppUtility.h"

@implementation AppUtility


#pragma mark Singilton Method

+(AppUtility *)sharedGMSUtility
{
    static AppUtility *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AppUtility alloc] init];
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

-(AppUtility *)init
{
    NSLog(@"Utility Init Called");
    if ((self = [super init])) {
    }
    
    // init
    
    return self;
}

#pragma mark - Custom Methods
-(void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title message:message delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
    
}

-(UIStoryboard *)currentStoryBoard
{
    UIStoryboard *storyBoard  = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return storyBoard;
}

-(NSDate *)currentDateTime{
    NSDate *date = [NSDate date];//we use date in name wehn we set the name of image
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];//just set the format of date
    [formatter setDateStyle:NSDateFormatterLongStyle];
    [formatter setDateFormat:@"YYYY-MM-ddhh:mm:ss"];
    //NSString *str = [formatter stringFromDate:date];
    return date;
}

-(NSString *)directoryPath{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
    
}

/*! Save image to documents directory
 
 @pram   Image object and Image name
 @return path of saved image
 */
-(NSString *)saveImageToDirectory:(UIImage *)image withName:(NSString *)name
{
    NSString *directrotyPath = [Utility directoryPath];
    //NSDate *currentDateTime = [AppUtility currentDateTime];
    NSString *imagePath = [directrotyPath stringByAppendingString:[NSString stringWithFormat:@"%@.png",name]];
    NSData *imageData = UIImagePNGRepresentation(image);
    [imageData writeToFile:imagePath atomically:YES];
    return imagePath;
}


#pragma mark - Date conversion Methods
-(NSDate *)getDateFromString:(NSString *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    // ...using a date format corresponding to your date
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    // Parse the string representation of the date
    NSDate *convertedDate = [dateFormatter dateFromString:date];
    
    // Write the date back out using the same format
    return convertedDate;
}

-(NSString *)changeDateFormat:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    // ...using a date format corresponding to your date
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    // Parse the representation of the date
    NSString *convertedDateString = [dateFormatter stringFromDate:date];
    
    // NSDate *convertedDate = [dateFormatter dateFromString:convertedDateString];
    // Write the date back out using the same format
    return convertedDateString;
}

#pragma mark - Net connectivity
- (BOOL)isInternetConnectionAlive
{
    //Reachability *reachability = [Reachability reachabilityForInternetConnection];
    Reachability* reachability = [Reachability reachabilityWithHostname: @"www.google.com"];
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    return !(networkStatus == NotReachable);
}


@end
