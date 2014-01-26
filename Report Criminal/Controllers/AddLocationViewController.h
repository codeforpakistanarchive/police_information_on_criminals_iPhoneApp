//
//  AddLocationViewController.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUtility.h"
@interface AddLocationViewController : UIViewController<UIAlertViewDelegate,UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btnReport;
- (IBAction)reportPressed:(id)sender;
@end
