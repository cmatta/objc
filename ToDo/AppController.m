//
//  AppController.m
//  ToDo
//
//  Created by Christopher Matta on 4/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"


@implementation AppController
-(id)init
{
	[super init];
	
	// Log
	NSLog(@"init");
	
	toDoList = [[NSMutableArray alloc] init];
	
	return self;
}

-(IBAction)createNewItem:(id)sender
{
	NSString *string = [newItemField stringValue];
	
	
	// Ensure the string isn't empty
	if ([string length] == 0){
		NSLog(@"string from %@ is of zero-length", newItemField);
		return;
	}
	NSLog(@"String: %@", string);
	[toDoList addObject:string];
	NSLog(@"List length: %d", [toDoList count]);
	
	[newItemField setStringValue:@""];
	[tableView reloadData];
	
	return;
}

-(int)numberOfRowsInTableView:(NSTableView *)tv
{
	return [toDoList count];
}

-(id)tableView:(NSTableView *)tv
		objectValueForTableColumn:(NSTableColumn *)tableColumn
				row:(int)row
{
	return [toDoList objectAtIndex:row];
}

-(id)tableView:(NSTableView *)tv setObjectValue:(id)obj
	forTableColumn:(NSTableColumn *)tableColumn
		   row:(int)row
{
	[toDoList replaceObjectAtIndex:row withObject:obj];
}
	

@end
