//
//  CriminalListViewController.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalListViewController.h"

@interface CriminalListViewController ()

-(void)setView;
@end

@implementation CriminalListViewController
@synthesize btnAllCriminals,btnMostReportedCriminals,btnMostWantedCriminals,btnNearMyPlaceCriminal;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Custom methods
-(void)setView
{
    [self.navigationController.navigationBar setHidden:YES];
    [btnAllCriminals setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnMostReportedCriminals setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnMostWantedCriminals setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnNearMyPlaceCriminal setBackgroundImage:btnBgImage forState:UIControlStateNormal];
}
@end
