//
//  ControlAppDelegate.m
//  Control
//
//  Created by Ricky Nelson on 8/2/10.
//  Copyright 2010 Lark Software, LLC. All rights reserved.
//

#import "ControlAppDelegate.h"
#import "MyViewController.h"

@implementation ControlAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	//[views arrayByAddingObject:contentView];
}

- (IBAction)addSubview:(id)sender
{
	MyViewController *myView = [[MyViewController alloc] initWithNibName:@"ContentView" 
																  bundle:nil];
	NSView *newView = [myView view];

	[backgroundView addSubview:newView];
}

@end
