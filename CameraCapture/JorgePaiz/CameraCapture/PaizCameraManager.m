//
//  PaizCameraManager.m
//  CameraCapture
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "PaizCameraManager.h"

@implementation PaizCameraManager

-(id)init
{
    self = [super init];
    
    if (self) {
        // input
        videoInput = [AVCaptureDeviceInput deviceInputWithDevice:[AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo] error:nil];
        
        // output
        videoOutput = [[AVCaptureVideoDataOutput alloc] init];
        videoOutput.alwaysDiscardsLateVideoFrames = YES;
        videoOutput.minFrameDuration = CMTimeMake(1, 10);
        
        // captue session
        captueSession = [[AVCaptureSession alloc] init];
        [captueSession addInput:videoInput];
        [captueSession addOutput:videoOutput];
        
        // preset
        [captueSession setSessionPreset:AVCaptureSessionPresetHigh];
        
        // preview layer
        previeLayer = [AVCaptureVideoPreviewLayer layerWithSession:captueSession];
        previeLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
        //previeLayer.transform = CATransform3DRotate(CATransform3DIdentity, M_PI/-2.0f, 0, 0, 1);
    }
    
    return self;
}

-(id)initWithView:(UIView *)view
{
    [self init];
    previeLayer.frame = CGRectMake(0, 0, view.frame.size.width, view.frame.size.height);
    [view.layer addSublayer:previeLayer];
    
    [captueSession startRunning];
    return self;
}

@end
