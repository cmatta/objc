//
//  AppController.h
//  WindowResize
//
//  Created by Christopher Matta on 4/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject <NSWindowDelegate> {
	IBOutlet NSTextField *windowSize;
	
}

-(NSSize)windowWillResize:(NSWindow *)sender
				   toSize:(NSSize)frameSize;

@end
