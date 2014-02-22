//
//  LoginViewController.m
//  Ribbit
//
//  Created by stephen g on 2/19/14.
//  Copyright (c) 2014 stephen g. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
    
	// Do any additional setup after loading the view.
}

- (IBAction)login:(id)sender {
    NSString *userName = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    if([userName length] == 0 || [password length] == 0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Make sure you enter all fields." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    } else{
        
        [PFUser logInWithUsernameInBackground:userName password:password block:^(PFUser *user, NSError *error) {
            if (!error) {
                [self.navigationController popToRootViewControllerAnimated:YES];
            } else {
                NSString *errorString = [error userInfo][@"error"];
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!" message:errorString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
                [alertView show];
            }
        }];
        
    }
}
@end
