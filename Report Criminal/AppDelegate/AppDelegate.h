//
//  AppDelegate.h
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RCCriminal.h"
@import CoreData;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    RCCriminal *currentCriminal;
    NSManagedObjectModel *managedObjectModel;
    NSManagedObjectContext *managedObjectContext;
    NSPersistentStoreCoordinator *persistentStoreCoordinator;
}

#pragma mark - Properties
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) RCCriminal *currentCriminal;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

#pragma mark - Methods
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
