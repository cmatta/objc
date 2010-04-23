//
//  lotteryEntry.m
//  lottery
//
//  Created by chris on 4/16/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LotteryEntry.h"


@implementation LotteryEntry
-(id)initWithEntryDate:(NSCalendarDate *)theDate
{
	if(![super init])
		return nil;
	NSAssert(theDate == nil, @"Argument must be non-nil");
	entryDate = [theDate retain];
	firstNumber = random() % 100 + 1;
	secondNumber = random() % 100 + 1;
	thirdNumber = random() % 100 + 1;
	fourthNumber = random() % 100 + 1;
	return self;
}

-(id)init 
{
	return [self initWithEntryDate:[NSCalendarDate calendarDate]];
}

-(void)setEntryDate:(NSCalendarDate *)date
{
	[date retain];
	[entryDate release];
	entryDate = date;
}

-(NSCalendarDate *)entryDate
{
	return entryDate;
}

-(int)firstNumber
{
	return firstNumber;
}

-(int)secondNumber
{
	return secondNumber;
}

-(int)thirdNumber
{
	return thirdNumber;
}

-(int)fourthNumber
{
	return fourthNumber;
}


-(NSString *)description
{
	NSString *result;
	result = [[NSString alloc]initWithFormat:@"%@ = %d, %d, %d, and %d",
			  [entryDate descriptionWithCalendarFormat:@"%b %d, %Y"],
			  firstNumber, secondNumber, thirdNumber, fourthNumber];
	[result autorelease];
	return result;
}

-(void)dealloc
{
	NSLog(@"deallocing %@", self);
	[entryDate release];
	[super dealloc];
}

@end
