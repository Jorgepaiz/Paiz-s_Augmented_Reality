//
//  CameraTestingAppDelegate_iPad.m
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CameraTestingAppDelegate_iPad.h"
#import "iPadViewController.h"

@implementation CameraTestingAppDelegate_iPad

@synthesize viewController = _viewController;

-(void)dealloc
{
    [self.viewController release];
    
    [super dealloc];
}

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.viewController = [[iPadViewController alloc] init];
    [self.window setRootViewController:self.viewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
