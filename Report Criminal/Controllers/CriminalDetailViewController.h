//
//  CriminalDetailViewController.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUtility.h"
#import "AddLocationViewController.h"
@import CoreLocation;
@interface CriminalDetailViewController : UIViewController<UIScrollViewDelegate,UIAlertViewDelegate,UIGestureRecognizerDelegate,CLLocationManagerDelegate>
{
    
    CLLocationManager *locationManager;
    CLLocation *currentLocation;
}


#pragma mark - IBOutlets

@property (weak, nonatomic) IBOutlet UIImageView *imgvPhoto;


@property (weak, nonatomic) IBOutlet UILabel *lblWantedLevel;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblGender;
@property (weak, nonatomic) IBOutlet UILabel *lblAge;
@property (weak, nonatomic) IBOutlet UILabel *lblColor;
@property (weak, nonatomic) IBOutlet UILabel *lblIdentificationMark;
@property (weak, nonatomic) IBOutlet UILabel *lblCrime;


@property (weak, nonatomic) IBOutlet UIButton *btnReported;
@property (weak, nonatomic) IBOutlet UIButton *btnReport;

@property (weak, nonatomic) IBOutlet UIScrollView *svCriminalDetail;
#pragma mark - IBActions
- (IBAction)reportPressed:(id)sender;

@end
