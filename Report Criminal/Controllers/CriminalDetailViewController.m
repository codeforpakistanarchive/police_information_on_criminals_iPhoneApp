//
//  CriminalDetailViewController.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalDetailViewController.h"

@interface CriminalDetailViewController ()
{
    BOOL isLocationRecieved;
}
-(void)setView;
-(void)showDetail;
@end

@implementation CriminalDetailViewController
@synthesize imgvPhoto;
@synthesize svCriminalDetail;
@synthesize btnReported,btnReport;
@synthesize lblAge,lblColor,lblCrime,lblGender,lblIdentificationMark,lblName,lblWantedLevel;

#pragma mark - Initilizer Method
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View LifeCycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setView];
    [self showDetail];
    [self addSwipeGestureToGrandParentsTable];
    
    isLocationRecieved = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions
- (IBAction)reportPressed:(id)sender {
    
    [self showAlertViewForReportWithTitle:AlertTitle andMessage:@"Where did you seen this criminal?"];
}

#pragma mark - Custom methods
-(void)setView
{
    [self.navigationController.navigationBar setHidden:YES];
    [self.view setBackgroundColor:AppBgColor];
    [btnReported setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnReport setBackgroundImage:btnBgImageBig forState:UIControlStateNormal];
    [svCriminalDetail setContentSize:CGSizeMake(298, 500)];
    [svCriminalDetail setDelegate:self];
    [svCriminalDetail setScrollEnabled:YES];
    
    currentLocation = [[CLLocation alloc] init];
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    //locationManager.distanceFilter = 1500.0f;  //only update when location changes this much
    locationManager.desiredAccuracy = kCLLocationAccuracyBest; //change for better accuracy
    
}

-(void)showDetail
{
    AppDelegate *delegate       = delegateObj;
    lblName.text                = [NSString stringWithFormat:@"%@ %@",delegate.currentCriminal.firstName,delegate.currentCriminal.lastName];
    lblAge.text                 = [NSString stringWithFormat:@"%@ Years",delegate.currentCriminal.age];
    lblColor.text               = delegate.currentCriminal.color;
    lblCrime.text               = delegate.currentCriminal.crime;
    lblGender.text              = delegate.currentCriminal.gender;
    lblIdentificationMark.text  = delegate.currentCriminal.identificationMark;
    NSArray *records = [delegate.currentCriminal.reportedHistory allObjects];
    [btnReported setTitle:[NSString stringWithFormat:@"Reported (%i)",[records count]] forState:UIControlStateNormal];
    
    
    lblWantedLevel.text         = [NSString stringWithFormat:@"%@",delegate.currentCriminal.rating];
    
    imgvPhoto.image             = [UIImage imageNamed:delegate.currentCriminal.photoPath];
    
    
}

-(void)showAlertViewForReportWithTitle:(NSString *)title andMessage:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"Enter place" otherButtonTitles:@"At my place", nil];
    [alert show];
}

-(void)addSwipeGestureToGrandParentsTable
{
    UISwipeGestureRecognizer *rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeHandler:)];
    [rightSwipe setDirection:UISwipeGestureRecognizerDirectionRight];
    [rightSwipe setDelegate:self];
    [self.view addGestureRecognizer:rightSwipe];
}

-(void)swipeHandler:(UISwipeGestureRecognizer *)gesture
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - UIAlertView Delegate
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        
        isLocationRecieved = NO;
        if([CLLocationManager locationServicesEnabled])
        {
            [locationManager startUpdatingLocation];
        }
        else
        {
            [Utility showAlertWithTitle:AlertTitle andMessage:@"Location Service is disabled. To re-enable go to Settings->Privacy->Location Services"];
        }
        
    }else{
        UIStoryboard *myStoryBoard = [Utility currentStoryBoard];
        AddLocationViewController *addLocation = [myStoryBoard instantiateViewControllerWithIdentifier:@"addLocation"];
        [self.navigationController pushViewController:addLocation animated:YES];
    }
}

#pragma mark - CLLocation Delegate
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    currentLocation = [locations lastObject];
    NSLog(@"Current Location is %@",currentLocation);
    if (!isLocationRecieved) {
        if (currentLocation != nil) {
            isLocationRecieved = YES;
            [Utility showAlertWithTitle:AlertTitle andMessage:@"Thank you for helping us."];
        }else{
            [Utility showAlertWithTitle:AlertTitle andMessage:@"Location is not availible. Try later."];
        }
        
        [manager stopUpdatingLocation];
    }
    
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    // case when user denied access to his current location,, we need to stop updates then
    if(error.code == kCLErrorDenied)
    {
        
        
        [locationManager stopUpdatingLocation];
        [Utility showAlertWithTitle:AlertTitle andMessage:@"User location is disabled.To re-enable go to settings->General->Reset->Reset Location & Privacy"];
        
    }
    //case when location is not availible due to some reason,
    else if (error.code == kCLErrorLocationUnknown)
    {
        
    }
    else
    {
        [Utility showAlertWithTitle:AlertTitle andMessage:[error description]];
    }
}
@end
