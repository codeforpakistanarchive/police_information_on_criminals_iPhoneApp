//
//  CriminalDetailViewController.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalDetailViewController.h"

@interface CriminalDetailViewController ()
-(void)setView;
@end

@implementation CriminalDetailViewController
@synthesize btnReported;
@synthesize lblCriminalInfo;

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
    AppDelegate *delegate = delegateObj;
    lblCriminalInfo.text = [NSString stringWithFormat:@"Criminal %@ is wanted with age %@",delegate.currentCriminal.firstName, delegate.currentCriminal.age];
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
    [btnReported setBackgroundImage:btnBgImage forState:UIControlStateNormal];
}

@end
