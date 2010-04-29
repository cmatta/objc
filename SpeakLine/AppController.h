//
//  AppController.h
//  SpeakLine
//
//  Created by Christopher Matta on 4/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AppController : NSObject <NSSpeechSynthesizerDelegate> {

	IBOutlet NSTextField *textField;
	IBOutlet NSButton *stopButton;
	IBOutlet NSButton *startButton;
	IBOutlet NSTableView *tableView;
	NSArray *voiceList;
	NSSpeechSynthesizer *speechSynth;
}

-(IBAction)sayIt:(id)sender;
-(IBAction)stopIt:(id)sender;

@end
