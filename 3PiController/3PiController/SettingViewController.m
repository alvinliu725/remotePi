//
//  SettingViewController.m
//  3PiController
//
//  Created by Yu XI on 15/2/23.
//  Copyright (c) 2015年 3piControllerIOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SettingViewController.h" 

@implementation SettingViewController

//- (void) viewDidLoad{
//    [super viewDidLoad];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// Release any retained subviews of the main view.
- (void)viewDidUnload {
    [super viewDidUnload];
}


-(IBAction)doSave:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Save" message:@"Save Successfully" delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];
    //@Action todo
}

-(IBAction)doClear:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Clear" message:@"Clear Successfully" delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];
    //@Action todo
}

-(IBAction)doDefault:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Default" message:@"Change to Default Successfully" delegate:nil cancelButtonTitle:@"Done" otherButtonTitles:nil];
    [alert show];
    //@Action todo
}

@end

