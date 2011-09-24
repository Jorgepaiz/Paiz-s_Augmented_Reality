//
//  PaizCameraCapture.h
//  PaizCameraCapture
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface PaizCameraCapture : NSObject <AVCaptureVideoDataOutputSampleBufferDelegate>
{
    @private
    //capture session
    AVCaptureSession            *captureSession;
    
    // preview layer
    AVCaptureVideoPreviewLayer  *previewCaptureLayer;
}

@end
