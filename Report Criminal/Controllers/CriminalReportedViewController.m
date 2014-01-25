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
    RCReported *reportedHistory;
    NSArray *reportedRecords;
}
@end

@implementation CriminalReportedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate *delegate = delegateObj;
    reportedRecords = [delegate.currentCriminal.reportedHistory allObjects];
    reportedHistory = [reportedRecords objectAtIndex:0];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
