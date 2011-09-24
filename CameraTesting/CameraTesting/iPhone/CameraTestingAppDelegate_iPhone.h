//
//  CameraTestingAppDelegate_iPhone.h
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CameraTestingAppDelegate.h"

@class iPhoneViewController;

@interface CameraTestingAppDelegate_iPhone : CameraTestingAppDelegate
{
    iPhoneViewController *viewController;
}

@property (nonatomic, retain) IBOutlet iPhoneViewController *viewController;

@end
