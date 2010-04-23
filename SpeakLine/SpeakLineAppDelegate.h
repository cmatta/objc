//
//  SpeakLineAppDelegate.h
//  SpeakLine
//
//  Created by Christopher Matta on 4/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SpeakLineAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
