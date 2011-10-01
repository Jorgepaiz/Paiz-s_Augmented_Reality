//
//  iPadViewController.h
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <JorgePaiz/CameraCapture/PaizCameraCapture.h>

#import "GLView.h"

@interface iPadViewController : UIViewController <GLViewDelegate>
{
    UIView  *cameraView;
    PaizCameraManager *cameraCupture;
}

@property (nonatomic, retain) IBOutlet UIView   *cameraView;
@property (nonatomic, retain) PaizCameraManager *cameraCapture;

@end
