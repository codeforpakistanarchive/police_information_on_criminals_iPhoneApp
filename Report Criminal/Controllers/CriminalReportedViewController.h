//
//  CriminalReportedViewController.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "AddressAnnotation.h"
#import <QuartzCore/QuartzCore.h>
#import <MapKit/MapKit.h>
#import <UIKit/UIKit.h>

#import "AppDelegate.h"
#import "AppUtility.h"
#import "RCReported.h"

@interface CriminalReportedViewController : UIViewController <MKAnnotation, MKMapViewDelegate>


#pragma mark - Outlets

@property (weak, nonatomic) IBOutlet MKMapView *mapview;

#pragma mark - Button Action Methods
- (IBAction)btnBack_Action:(id)sender;

@end
