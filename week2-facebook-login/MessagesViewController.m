//
//  MessagesViewController.m
//  week2-facebook-login
//
//  Created by Cliff Curry on 6/30/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "MessagesViewController.h"

@interface MessagesViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *noticeScrollView;

@end

@implementation MessagesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Set the name, and color of text and color of the navigation for this page
    self.navigationItem.title = @"Messages";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.290 green:0.396 blue:0.667 alpha:1.000];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
//    self.noticeScrollView.frame = CGRectMake(0,70, 320, 1636);
    self.noticeScrollView.contentSize = CGSizeMake(320, 818);
    
    
    
    
    
    // Configure the left button
    UIImage *leftButtonImage = [[UIImage imageNamed:@"search_icn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:leftButtonImage style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    // Configure the right button
    UIImage *rightButtonImage = [[UIImage imageNamed:@"friends_icn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:rightButtonImage style:UIBarButtonItemStylePlain target:self action:nil];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
