//
//  PaizCameraManager.h
//  CameraCapture
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <CoreVideo/CoreVideo.h>
#import <CoreMedia/CoreMedia.h>


@interface PaizCameraManager : NSObject <AVCaptureVideoDataOutputSampleBufferDelegate>
{
    @private
    // capture session
    AVCaptureSession            *captueSession;
    
    // preview layer
    AVCaptureVideoPreviewLayer  *previeLayer;
    
    // device input
    AVCaptureDeviceInput        *videoInput;
    
    // captrue output
    AVCaptureVideoDataOutput    *videoOutput;
}

-(id)initWithView:(UIView *)view;

@end
