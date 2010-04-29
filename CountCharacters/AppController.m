//
//  AppController.m
//  CountCharacters
//
//  Created by Christopher Matta on 4/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController
-(id)init
{
	[super init];
	
	NSLog(@"init");
	
	inputField = [[NSTextField alloc] init];
	characterCount = [[NSTextField alloc] init];
	
	return self;
}

-(IBAction)countIt:(id)sender
{
	int strlen = [[inputField stringValue] length];
	NSString *output = [[NSString alloc] initWithFormat:@"Input text has %d characters.", strlen];
	
	NSLog(@"%@", output);
	
   [characterCount setStringValue:(@"%@", output)];
}

	
	
@end
