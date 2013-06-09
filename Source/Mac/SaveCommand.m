//
//  SaveCommand.m
//  ECCommandLineTest
//
//  Created by Sam Deane on 08/06/2013.
//  Copyright (c) 2013 Elegant Chaos. All rights reserved.
//

#import "SaveCommand.h"

@implementation SaveCommand

- (ECCommandLineResult)engine:(ECCommandLineEngine*)engine didProcessWithArguments:(NSMutableArray *)arguments
{
	NSLog(@"save command processed with arguments %@", [arguments componentsJoinedByString:@","]);

	return ECCommandLineResultOK;
}

@end
