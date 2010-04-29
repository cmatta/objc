//
//  AppController.m
//  WindowResize
//
//  Created by Christopher Matta on 4/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController
-(id)init
{
	[super init];
	
	NSLog(@"init");
	
	windowSize = [[NSTextField alloc] init];
	
	return self;
}

-(NSSize)windowWillResize:(NSWindow *)sender
				   toSize:(NSSize)frameSize
{
	
	NSSize currentSize = [sender frame].size;
	currentSize.width = frameSize.width;
	currentSize.height = frameSize.width * 2;
	NSString *output = [[NSString alloc] initWithFormat:@"Size: %g x %g", frameSize.width, frameSize.height];
	
	NSLog(@"%@", output);
	[windowSize setStringValue:(@"%@", output)];
	return currentSize;
}
@end
