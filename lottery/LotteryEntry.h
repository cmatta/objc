//
//  LotteryEntry.h
//  Lottery
//
//  Created by chris on 4/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>



@interface LotteryEntry : NSObject {
	NSCalendarDate *entryDate;
	int firstNumber;
	int secondNumber;
	int thirdNumber;
	int fourthNumber;
}

-(id)initWithEntryDate:(NSCalendarDate *)theDate;
-(void)setEntryDate:(NSCalendarDate *)date;
-(NSCalendarDate *)entryDate;
-(int)firstNumber;
-(int)secondNumber;
-(int)thirdNumber;
-(int)fourthNumber;

@end
