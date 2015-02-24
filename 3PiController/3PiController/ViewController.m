//
//  ViewController.m
//  3PiController
//
//  Created by Yu XI on 15/2/23.
//  Copyright (c) 2015年 3piControllerIOS. All rights reserved.
//

//using CFNetwork to connect to raspberry PI

#import "ViewController.h"
#import "SettingViewController.h"
#import "MainConsoleController.h"

@interface ViewController ()

@end

@implementation ViewController

// Do any additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"3Pi Robot Controller";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Main Page" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backButton;
    [self.connStatus setText:@"Not Connected"];
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
    settingViewController.title = @"3Pi Robot Settings";
    [self.navigationController pushViewController:settingViewController animated:YES];
}

- (IBAction)doConnect:(id)sender {
    connecting = YES;
    [self doDisconnect:nil];
    [self initializeNetworkComm];
    [self.connStatus setText:@"Connecting...."];
    [self performSelector:@selector(ConnectionWait:) withObject:nil];
}

- (IBAction)doDisconnect:(id)sender {
}

- (IBAction)linktoMainConsole:(id)sender{
    MainConsoleController *mainConsoleController = [[MainConsoleController alloc] initWithNibName:@"mainConsole" bundle:nil];
    mainConsoleController.title = @"Robot & Rasp Pi Main Console";
    [self.navigationController pushViewController:mainConsoleController animated:YES];
}



- (void)initializeNetworkComm {
    CFReadStreamRef readS;
    CFWriteStreamRef writeS;
    CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef) CFBridgingRetain(hostName), [portNumber intValue], &readS, &writeS);
    outputS = (NSOutputStream *) CFBridgingRelease(writeS);
    [outputS scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
    [outputS open];
}


- (void)ConnectionWait:(id) sender{
    @autoreleasepool {
        while(([outputS streamStatus] != NSStreamStatusOpen && [outputS streamStatus] != NSStreamStatusError) && connecting){
            [self.connStatus performSelectorOnMainThread:@selector(setText:) withObject:@"Connecting..." waitUntilDone:YES];
        }
        if([outputS streamStatus] == NSStreamStatusOpen){
            [self.connStatus performSelectorOnMainThread:@selector(setText:) withObject:[NSString stringWithFormat:@"Connected to %@:%@:", hostName, portNumber] waitUntilDone:YES];
        }
        else if([outputS streamStatus] == NSStreamStatusError){
            [self.connStatus performSelectorOnMainThread:@selector(setText:) withObject: @"Error! Check!" waitUntilDone:YES];
        }
        else{
            [self.connStatus performSelectorOnMainThread:@selector(setText:) withObject:@"Not connected" waitUntilDone:YES];
        }
        
    }
}

@end
