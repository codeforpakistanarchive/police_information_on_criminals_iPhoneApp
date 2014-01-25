//
//  CriminalListViewController.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUtility.h"

@interface CriminalListViewController : UIViewController


#pragma mark - IBOutlets
@property (weak, nonatomic) IBOutlet UIButton *btnAllCriminals;
@property (weak, nonatomic) IBOutlet UIButton *btnMostReportedCriminals;
@property (weak, nonatomic) IBOutlet UIButton *btnMostWantedCriminals;
@property (weak, nonatomic) IBOutlet UIButton *btnNearMyPlaceCriminal;

@end
