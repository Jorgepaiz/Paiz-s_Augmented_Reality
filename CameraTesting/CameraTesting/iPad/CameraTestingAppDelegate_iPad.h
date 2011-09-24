//
//  CameraTestingAppDelegate_iPad.h
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CameraTestingAppDelegate.h"

@class iPadViewController;

@interface CameraTestingAppDelegate_iPad : CameraTestingAppDelegate
{
    iPadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet iPadViewController *viewController;

@end
