//
//  MainConsoleController.m
//  3PiController
//
//  Created by Yu XI on 15/2/23.
//  Copyright (c) 2015年 3piControllerIOS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainConsoleController.h"

@implementation MainConsoleController
@class ViewController;


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


-(IBAction)goUp:(id)sender{
    [self sendCommand:@"forward"];
    NSLog(@"forward");
}

-(IBAction)goDown:(id)sender{
    [self sendCommand:@"back"];
    NSLog(@"back");
}

-(IBAction)goLeft:(id)sender{
    [self sendCommand:@"left"];
    NSLog(@"left");
}

-(IBAction)goRight:(id)sender{
    [self sendCommand:@"right"];
    NSLog(@"right");
}

-(IBAction)stop:(id)sender{
    [self sendCommand:@"stop"];
    NSLog(@"stop");
}

- (void) sendCommand: (NSString *) command{
    ViewController *viewController = [[ViewController alloc]init];
    NSData *data = [[NSData alloc] initWithData:[command dataUsingEncoding:NSASCIIStringEncoding]];
    [viewController.ouputS write:[data bytes] maxLength:[data length]];
}

@end

