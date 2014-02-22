//
//  SignupViewController.h
//  Ribbit
//
//  Created by stephen g on 2/19/14.
//  Copyright (c) 2014 stephen g. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;
@property (strong, nonatomic) IBOutlet UITextField *emailField;
- (IBAction)signup:(id)sender;

@end
