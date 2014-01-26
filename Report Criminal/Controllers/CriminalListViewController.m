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
    criminals = [modelObj getAllCriminals:0];
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
    
    UIImageView *photo      = (UIImageView *)[tableView viewWithTag:1];
    UILabel *name           = (UILabel *) [tableView viewWithTag:2];
    UILabel *authorityName  = (UILabel *) [tableView viewWithTag:3];
    UILabel *wantedLevel    = (UILabel *) [tableView viewWithTag:4];
    UIImageView *wantedBg      = (UIImageView *)[tableView viewWithTag:5];
    [name setTextColor:[UIColor colorWithRed:40.0/255.0 green:105.0/255.0 blue:132.0/255.0 alpha:1.0]];
    [authorityName setTextColor:[UIColor colorWithRed:116.0/255 green:117.0/255 blue:117.0/255 alpha:1.0]];
    UIImage* bg = [[UIImage imageNamed:@"chat_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    [cell.backgroundView setBackgroundColor:[UIColor colorWithPatternImage:bg]];
    RCCriminal *criminal    = [criminals objectAtIndex:indexPath.row];
    photo.image             = [UIImage imageNamed:criminal.photoPath];
    wantedBg.image          =[UIImage imageNamed:@"red-circle.png"];
    name.text               = criminal.firstName;
    wantedLevel.text        = [NSString stringWithFormat:@"%@", criminal.rating];
    
    RCAuthority *authority  = criminal.concernDepart;
    authorityName.text      = authority.name;
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
    [btnAllCriminals setSelected:YES];
    [self.navigationController.navigationBar setHidden:YES];
    [btnAllCriminals setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnAllCriminals setBackgroundImage:btnBgImageSelected forState:UIControlStateHighlighted];
    [btnAllCriminals setBackgroundImage:btnBgImageSelected forState:UIControlStateSelected];
    [btnAllCriminals setTitleEdgeInsets:UIEdgeInsetsMake(5, 10, 10, 10)];
    [btnAllCriminals setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0 ]forState:UIControlStateNormal];
    [btnAllCriminals setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateHighlighted];
    [btnAllCriminals setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateSelected];
    
    
    [btnMostReportedCriminals setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnMostReportedCriminals setBackgroundImage:btnBgImageSelected forState:UIControlStateHighlighted];
    [btnMostReportedCriminals setBackgroundImage:btnBgImageSelected forState:UIControlStateSelected];
    [btnMostReportedCriminals setTitleEdgeInsets:UIEdgeInsetsMake(5, 10, 10, 10)];
    [btnMostReportedCriminals setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0 ]forState:UIControlStateNormal];
    [btnMostReportedCriminals setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateHighlighted];
    [btnMostReportedCriminals setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateSelected];
    
    
    [btnMostWantedCriminals setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnMostWantedCriminals setBackgroundImage:btnBgImageSelected forState:UIControlStateHighlighted];
    [btnMostWantedCriminals setBackgroundImage:btnBgImageSelected forState:UIControlStateSelected];
    [btnMostWantedCriminals setTitleEdgeInsets:UIEdgeInsetsMake(5, 10, 10, 10)];
    [btnMostWantedCriminals setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0 ]forState:UIControlStateNormal];
    [btnMostWantedCriminals setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateHighlighted];
    [btnMostWantedCriminals setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateSelected];
    
    
    [btnNearMyPlaceCriminal setBackgroundImage:btnBgImage forState:UIControlStateNormal];
    [btnNearMyPlaceCriminal setBackgroundImage:btnBgImageSelected forState:UIControlStateHighlighted];
    [btnNearMyPlaceCriminal setBackgroundImage:btnBgImageSelected forState:UIControlStateSelected];
    [btnNearMyPlaceCriminal setTitleEdgeInsets:UIEdgeInsetsMake(5, 10, 10, 10)];
    [btnNearMyPlaceCriminal setTitleColor:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0 ]forState:UIControlStateNormal];
    [btnNearMyPlaceCriminal setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateHighlighted];
    [btnNearMyPlaceCriminal setTitleColor:[UIColor colorWithRed:24.0/255.0 green:74.0/255.0 blue:96.0/255.0 alpha:1.0 ]forState:UIControlStateSelected];
    
    
    UIColor *viewbackground = [[UIColor alloc] initWithPatternImage:[[UIImage imageNamed:@"bg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 10, 10)]];
    [self.view setBackgroundColor:viewbackground];
}


#pragma mark - IBActions
- (IBAction)allCriminalSelected:(id)sender {
    [btnAllCriminals setSelected:YES];
    [btnMostReportedCriminals setSelected:NO];
    [btnMostWantedCriminals setSelected:NO];
    [btnNearMyPlaceCriminal setSelected:NO];
    CriminalListModel *modelObj = [[CriminalListModel alloc] init];
    criminals = [modelObj getAllCriminals:0];
    [tblCriminalList reloadData];
    
}

- (IBAction)reportedCriminalSelected:(id)sender {
    [btnAllCriminals setSelected:NO];
    [btnMostReportedCriminals setSelected:YES];
    [btnMostWantedCriminals setSelected:NO];
    [btnNearMyPlaceCriminal setSelected:NO];
    CriminalListModel *modelObj = [[CriminalListModel alloc] init];
    criminals = [modelObj getAllCriminals:1];
    [tblCriminalList reloadData];
}

- (IBAction)wantedCriminalSelected:(id)sender {
    [btnAllCriminals setSelected:NO];
    [btnMostReportedCriminals setSelected:NO];
    [btnMostWantedCriminals setSelected:YES];
    [btnNearMyPlaceCriminal setSelected:NO];
    CriminalListModel *modelObj = [[CriminalListModel alloc] init];
    criminals = [modelObj getAllCriminals:2];
    [tblCriminalList reloadData];
}

- (IBAction)myPlaceCriminalSelected:(id)sender {
    [btnAllCriminals setSelected:NO];
    [btnMostReportedCriminals setSelected:NO];
    [btnMostWantedCriminals setSelected:NO];
    [btnNearMyPlaceCriminal setSelected:YES];
    CriminalListModel *modelObj = [[CriminalListModel alloc] init];
    criminals = [modelObj getAllCriminals:3];
    [tblCriminalList reloadData];
}
@end
