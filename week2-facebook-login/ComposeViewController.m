//
//  ComposeViewController.m
//  week2-facebook-login
//
//  Created by Cliff Curry on 6/27/14.
//  Copyright (c) 2014 Cliff Curry. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *statusField;
- (IBAction)onCancelButton:(id)sender;
- (IBAction)onSendButton:(id)sender;

@end

@implementation ComposeViewController

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
    
    [self.statusField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)onSendButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
