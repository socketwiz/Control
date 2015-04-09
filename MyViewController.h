//
//  MyViewController.h
//  Control
//
//  Created by Ricky Nelson on 8/2/10.
//  Copyright 2010 Lark Software, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MyViewController : NSViewController {
    IBOutlet NSTextField *lblHeading;
    IBOutlet NSButton *btnHello;
}

- (IBAction)changeText:(id)sender;
@end
