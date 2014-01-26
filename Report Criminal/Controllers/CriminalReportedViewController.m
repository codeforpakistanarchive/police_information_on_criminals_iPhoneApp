//
//  CriminalReportedViewController.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalReportedViewController.h"

@interface CriminalReportedViewController ()
{
    NSArray *reportedRecords;
    float topLat;
    float toplong;
    
    float bottomlat;
    float bottomlong;
}
@end

@implementation CriminalReportedViewController
@synthesize mapview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View LifeCycle Starting Methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate *delegate = delegateObj;
    reportedRecords = [delegate.currentCriminal.reportedHistory allObjects];
    [self plotPinsOnMap];
}


#pragma mark - Pin Ploting Methods

-(void)plotPinsOnMap{
    for (RCReported *reportedHistory in reportedRecords) {
        if ([reportedHistory isKindOfClass:[RCReported class]]) {
            [self placePinOnMapForItem:reportedHistory];
        }
    }
    [self zoomToFitMapAnnotations:mapview];
}

-(void)placePinOnMapForItem:(RCReported *)criminalReport{
    CLLocationCoordinate2D  ctrpoint;
    topLat   =  ctrpoint.latitude   = [criminalReport.latitude floatValue];
    toplong  =  ctrpoint.longitude  = [criminalReport.longitude floatValue];
    
    if (CLLocationCoordinate2DIsValid(ctrpoint)) {
        
        AddressAnnotation *addAnnotation = [[AddressAnnotation alloc] initWithPinID:0 withCoordinate:ctrpoint title:[Utility changeDateFormat:criminalReport.reportedDate] subtitle:Nil address:nil  pinAge:nil andConfirmedByOthers:nil inRange:NO isClose:NO withCreditText:nil andWithDistanceFromCurrentLocation:0.0];
        [mapview addAnnotation:addAnnotation];
        [mapview setCenterCoordinate:ctrpoint animated:YES];
    }
}

- (void)zoomToFitMapAnnotations:(MKMapView *)mapView {
    if ([mapView.annotations count] == 0) return;
    
    CLLocationCoordinate2D topLeftCoord;
    topLeftCoord.latitude = topLat;
    topLeftCoord.longitude = toplong;
    
    CLLocationCoordinate2D bottomRightCoord;
    bottomRightCoord.latitude = topLat;;
    bottomRightCoord.longitude = toplong;
    
    for(id<MKAnnotation> annotation in mapView.annotations) {
        topLeftCoord.longitude = fmin(topLeftCoord.longitude, annotation.coordinate.longitude);
        topLeftCoord.latitude = fmax(topLeftCoord.latitude, annotation.coordinate.latitude);
        bottomRightCoord.longitude = fmax(bottomRightCoord.longitude, annotation.coordinate.longitude);
        bottomRightCoord.latitude = fmin(bottomRightCoord.latitude, annotation.coordinate.latitude);
    }
    
    MKCoordinateRegion region;
    region.center.latitude = topLeftCoord.latitude - (topLeftCoord.latitude - bottomRightCoord.latitude) * 0.5;
    region.center.longitude = topLeftCoord.longitude + (bottomRightCoord.longitude - topLeftCoord.longitude) * 0.5;
    region.span.latitudeDelta = fabs(topLeftCoord.latitude - bottomRightCoord.latitude) * 1.1;
    
    // Add a little extra space on the sides
    region.span.longitudeDelta = fabs(bottomRightCoord.longitude - topLeftCoord.longitude) * 1.1;
    
    region = [mapView regionThatFits:region];
    [mapView setRegion:region animated:YES];
}




#pragma mark - Button Action Methods
- (IBAction)btnBack_Action:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}



#pragma mark - View LifeCycle Ending Methods
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
