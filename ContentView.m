//
//  ContentView.m
//  Control
//
//  Created by Ricky Nelson on 8/2/10.
//  Copyright 2010 Lark Software, LLC. All rights reserved.
//

#import "ContentView.h"


@implementation ContentView

- (void)awakeFromNib {    
	// draw a basic gradient for the view background
	NSColor* gradientBottom = [NSColor colorWithCalibratedRed:1.00 green:0.50 blue:0.00 alpha:1.00];
	NSColor* gradientTop    = [NSColor colorWithCalibratedRed:1.00 green:0.50 blue:0.00 alpha:0.50];
	
	bgGradient = [[NSGradient alloc] initWithStartingColor:gradientBottom
											   endingColor:gradientTop];
}

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect {
	// background gradient
	[bgGradient drawInRect:self.bounds angle:90.0];
	
	NSBezierPath* thePath = [NSBezierPath bezierPath];
	
	[[NSColor grayColor] setStroke];
	
	// bottom line
	[thePath moveToPoint:NSMakePoint(0.0, 0.0)];	
	[thePath lineToPoint:NSMakePoint(self.bounds.size.width, 0.0)];
	
	// top line
	[thePath moveToPoint:NSMakePoint(0.0, self.bounds.size.height)];	
	[thePath lineToPoint:NSMakePoint(self.bounds.size.width, self.bounds.size.height)];
	
	[thePath setLineWidth:1.0];
	[thePath stroke];
}

- (BOOL)mouseDownCanMoveWindow
{
	return NO;
}

- (void)mouseDragged:(NSEvent *)theEvent
{
	NSPoint newLocation = [theEvent locationInWindow];
	NSLog(@"Moving to: %f x %f", newLocation.x, newLocation.y);
	
	[self setFrameOrigin:newLocation];
}
@end
