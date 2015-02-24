//  ViewController.h
//  3PiController
//
//  Created by Yan Liu on 15/2/23.
//  Copyright (c) 2015  3piControllerIOS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
//useful for the motion control robot
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController{
    NSOutputStream *outputS;
    NSInputStream *inputS;
    NSString *hostName;
    NSString *portNumber;
    BOOL connecting;
}

@property(nonatomic, strong) IBOutlet UIButton *buttonConnect;
@property(nonatomic, strong) IBOutlet UIButton *buttonMainConsole;
@property(nonatomic, strong) IBOutlet UIButton *buttonSetting;
@property(nonatomic, strong) IBOutlet UILabel *connStatus;


- (IBAction)doSetting:(id)sender;
- (IBAction)doConnect:(id)sender;
- (IBAction)linktoMainConsole:(id)sender;
- (IBAction)doDisconnect:(id)sender;

@end

