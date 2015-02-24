//
//  ViewController.m
//  3PiController
//
//  Created by Yu XI on 15/2/23.
//  Copyright (c) 2015年 3piControllerIOS. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"
#import "MainConsoleController.h"

@implementation ViewController

// Do any additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"3Pi Robot Controller";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Main Page" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backButton;
}

//release any cached data, release the view
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) viewDidUnload{
    [super viewDidUnload];
}

- (IBAction)doSetting:(id)sender{
    SettingViewController *settingViewController = [[SettingViewController alloc] initWithNibName:@"SettingView" bundle:nil ];
    settingViewController.title = @"Robot & Rasp Pi Settings";
    [self.navigationController pushViewController:settingViewController animated:YES];
}

- (IBAction)doConnect:(id)sender {
    
}

- (IBAction)linktoMainConsole:(id)sender{
    MainConsoleController *mainConsoleController = [[MainConsoleController alloc] initWithNibName:@"mainConsole" bundle:nil];
    mainConsoleController.title = @"Robot & Rasp Pi Main Console";
    [self.navigationController pushViewController:mainConsoleController animated:YES];
}

@end
