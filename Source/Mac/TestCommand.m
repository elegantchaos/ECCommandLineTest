//
//  TestCommand.m
//  ECCommandLineTest
//
//  Created by Sam Deane on 08/06/2013.
//  Copyright (c) 2013 Elegant Chaos. All rights reserved.
//

#import "TestCommand.h"

@implementation TestCommand

- (ECCommandLineResult)didProcessWithArguments:(NSMutableArray *)arguments
{
	NSLog(@"test command processed with arguments %@", [arguments componentsJoinedByString:@","]);

	return ECCommandLineResultOK;
}

@end
