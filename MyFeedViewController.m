//
//  MyFeedViewController.m
//  week2-facebook-login
//
//  Created by Cliff Curry on 6/26/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "MyFeedViewController.h"
#import "ComposeViewController.h"


@interface MyFeedViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *feedScrollView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadFeedView;
@property (weak, nonatomic) IBOutlet UIView *topPanel;
- (IBAction)onStatusPress:(id)sender;

@end

@implementation MyFeedViewController

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
    self.navigationItem.title = @"Feed";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.290 green:0.396 blue:0.667 alpha:1.000];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    
    self.feedScrollView.frame = CGRectMake(0, 44, 320, 3000);
    [self.loadFeedView startAnimating];
    self.feedScrollView.alpha = 0;
    [self performSelector:@selector(onShowPage) withObject:nil afterDelay:2];
    self.topPanel.frame = CGRectMake(0, 64, 320, 44);

    
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

-(void)onShowPage {
    [self.loadFeedView stopAnimating];
    
    [UIView animateWithDuration:1 animations:^{
    self.feedScrollView.alpha = 1;
    }];
    
    
}

- (IBAction)onStatusPress:(id)sender {
    
    ComposeViewController *composeView = [[ComposeViewController alloc] init];
    [self presentViewController:composeView animated:YES completion:nil];
    
    
    //Show modally Show the keyboard and a compose view
    //Make  Compose view?
}

-(void)onLeftButton {}
-(void)onRightButton {}

@end
