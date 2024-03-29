//
//  CameraTestingAppDelegate_iPhone.m
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CameraTestingAppDelegate_iPhone.h"
#import "iPhoneViewController.h"

@implementation CameraTestingAppDelegate_iPhone

@synthesize viewController = _viewController;

-(void)dealloc
{
    [self.viewController release];
    
    [super dealloc];
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.viewController = [[iPhoneViewController alloc] init];
    [self.window setRootViewController:self.viewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
