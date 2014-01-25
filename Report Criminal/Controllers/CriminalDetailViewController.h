//
//  CriminalDetailViewController.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUtility.h"

@interface CriminalDetailViewController : UIViewController

#pragma mark - IBOutlets
@property (weak, nonatomic) IBOutlet UIButton *btnReported;
@property (weak, nonatomic) IBOutlet UILabel *lblCriminalInfo;

@end
