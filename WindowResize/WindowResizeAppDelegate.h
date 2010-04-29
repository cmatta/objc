//
//  WindowResizeAppDelegate.h
//  WindowResize
//
//  Created by Christopher Matta on 4/26/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WindowResizeAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
}

@property (assign) IBOutlet NSWindow *window;

@end
