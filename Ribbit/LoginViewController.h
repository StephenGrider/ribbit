//
//  LoginViewController.h
//  Ribbit
//
//  Created by stephen g on 2/19/14.
//  Copyright (c) 2014 stephen g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)login:(id)sender;


@end
