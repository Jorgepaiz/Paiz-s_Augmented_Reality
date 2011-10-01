//
//  iPhoneViewController.m
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPhoneViewController.h"



@implementation iPhoneViewController

@synthesize cameraView      = _cameraView;
@synthesize cameraCapture   = _cameraCupture;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.cameraCapture = [[PaizCameraManager alloc] initWithView:self.cameraView];
    
    NSLog(@"Library version %i.%i.%i", PAIZ_MAJOR_VERSION, PAIZ_MINOR_VERSION, PAIZ_SUBMINOR_VERSION);
}

- (void)viewDidUnload
{    
    [super viewDidUnload];
    
    self.cameraView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)dealloc
{
    [self.cameraView release];
    [self.cameraCapture release];
    
    [super dealloc];
}

@end
