//
//  CriminalListViewController.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUtility.h"
#import "CriminalDetailViewController.h"
#import "CriminalReportedViewController.h"
#import "RCCriminal.h"
#import "RCAuthority.h"
#import "CriminalListModel.h"
#import "AppDelegate.h"

@interface CriminalListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


#pragma mark - IBOutlets
@property (weak, nonatomic) IBOutlet UIButton *btnAllCriminals;
@property (weak, nonatomic) IBOutlet UIButton *btnMostReportedCriminals;
@property (weak, nonatomic) IBOutlet UIButton *btnMostWantedCriminals;
@property (weak, nonatomic) IBOutlet UIButton *btnNearMyPlaceCriminal;

@property (weak, nonatomic) IBOutlet UITableView *tblCriminalList;

#pragma mark - IBActions
- (IBAction)allCriminalSelected:(id)sender;
- (IBAction)reportedCriminalSelected:(id)sender;
- (IBAction)wantedCriminalSelected:(id)sender;
- (IBAction)myPlaceCriminalSelected:(id)sender;


@end
