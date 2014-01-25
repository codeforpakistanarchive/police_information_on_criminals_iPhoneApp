//
//  CriminalListViewController.m
//  Report Criminal
//
//  Created by Tanveer Ashraf on 25/01/2014.
//  Copyright (c) 2014 Tanveer Ashraf. All rights reserved.
//

#import "CriminalListViewController.h"

@interface CriminalListViewController ()
{
    NSArray *criminals;
}
-(void)setView;
@end

@implementation CriminalListViewController
@synthesize tblCriminalList;
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
    CriminalListModel *modelObj = [[CriminalListModel alloc] init];
    criminals = [modelObj getAllCriminals];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Data Source Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [criminals count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


#pragma mark - UITableView Delegate Methods
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    RCCriminal *criminal = [criminals objectAtIndex:indexPath.row];
    [cell.textLabel setText:criminal.firstName];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[self performSegueWithIdentifier:@"criminalDetail" sender:nil];
    UIStoryboard *storyBoard = [Utility currentStoryBoard];
    CriminalDetailViewController *criminalDetail = [storyBoard instantiateViewControllerWithIdentifier:@"detailView"];
    AppDelegate *delegate = delegateObj;
    delegate.currentCriminal = [criminals objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:criminalDetail animated:YES];
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
