//
//  AppController.h
//  CountCharacters
//
//  Created by Christopher Matta on 4/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject {
	IBOutlet NSTextField *inputField;
	IBOutlet NSTextField *characterCount;

}

-(IBAction)countIt:(id)sender;
@end
