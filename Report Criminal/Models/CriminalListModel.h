//
//  CriminalListModel.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RCAuthority.h"
#import "RCCriminal.h"
#import "ConcernAuthority.h"
#import "RCReported.h"
#import "AppUtility.h"

@interface CriminalListModel : NSObject

-(NSArray *)getAllCriminals:(int)number;
@end
