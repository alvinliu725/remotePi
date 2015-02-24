//
//  SettingViewController.m
//  3PiController
//
//  Created by Yu XI on 15/2/23.
//  Copyright (c) 2015年 3piControllerIOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SettingViewController.h" 

@interface SettingViewController()
@end

@implementation SettingViewController

- (void) viewDidLoad{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// Release any retained subviews of the main view.
- (void)viewDidUnload {
    [super viewDidUnload];
}


- (IBAction)View_TouchDown:(id)sender {
    //resignFirstResponder. hide the keyboard when touch down
    [[UIApplication sharedApplication] sendAction:@selector(resignFirstResponder) to:nil from:nil forEvent:nil];
}

-(IBAction)doSave:(id)sender {

    [self dismissViewControllerAnimated:YES completion:nil];
    //@Action todo
}

-(IBAction)doClear:(id)sender {

    //@Action todo
}

-(IBAction)doDefault:(id)sender{

    //@Action todo
}

@end

