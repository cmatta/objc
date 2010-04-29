//
//  AppController.h
//  ToDo
//
//  Created by Christopher Matta on 4/27/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
	IBOutlet NSTextField *newItemField;
	IBOutlet NSButton	 *addButton;
	IBOutlet NSTableView *tableView;
	NSMutableArray *toDoList;
}

-(IBAction)createNewItem:(id)sender;


@end
