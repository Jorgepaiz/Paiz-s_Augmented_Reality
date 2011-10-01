//
//  iPadViewController.m
//  CameraTesting
//
//  Created by Eng. Jorge Paiz on 9/24/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iPadViewController.h"

#import "ConstantsAndMacros.h"
#import "OpenGLCommon.h"

@implementation iPadViewController

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
    
    //self.cameraCapture = [[PaizCameraManager alloc] initWithView:self.cameraView];
    
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

-(void)drawView:(UIView *)theView
{
    //glColor4f(0.0, 0.0, 0.0, 0.0);
	//glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    // Drawing code here
    Vertex3D    vertex1 = Vertex3DMake(0.0, 1.0, -3.0);
    Vertex3D    vertex2 = Vertex3DMake(1.0, 0.0, -3.0);
    Vertex3D    vertex3 = Vertex3DMake(-1.0, 0.0, -3.0);
    Triangle3D  triangle = Triangle3DMake(vertex1, vertex2, vertex3);
    
    glLoadIdentity();
    glClearColor(0.7, 0.7, 0.7, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnableClientState(GL_VERTEX_ARRAY);
    glColor4f(1.0, 0.0, 0.0, 1.0);
    glVertexPointer(3, GL_FLOAT, 0, &triangle);
    glDrawArrays(GL_TRIANGLES, 0, 9);
    glDisableClientState(GL_VERTEX_ARRAY);
}

-(void)setupView:(GLView *)view
{
    const GLfloat zNear = 0.01, zFar = 1000.0, fieldOfView = 45.0; 
	GLfloat size; 
	glEnable(GL_DEPTH_TEST);
	glMatrixMode(GL_PROJECTION); 
	size = zNear * tanf(DEGREES_TO_RADIANS(fieldOfView) / 2.0); 
	CGRect rect = view.bounds; 
	glFrustumf(-size, size, -size / (rect.size.width / rect.size.height), size / 
			   (rect.size.width / rect.size.height), zNear, zFar); 
	glViewport(0, 0, rect.size.width, rect.size.height);  
	glMatrixMode(GL_MODELVIEW);
	
	glLoadIdentity(); 
}

@end
