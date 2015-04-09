//
//  ControlAppDelegate.h
//  Control
//
//  Created by Ricky Nelson on 8/2/10.
//  Copyright 2010 Lark Software, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@class BackgroundView;
@class ContentView;

@interface ControlAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	
	IBOutlet BackgroundView *backgroundView;
	//IBOutlet ContentView *contentView;
	
	NSArray *views;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)addSubview:(id)sender;

@end
