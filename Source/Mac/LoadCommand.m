//
//  LoadCommand.m
//  ECCommandLineTest
//
//  Created by Sam Deane on 08/06/2013.
//  Copyright (c) 2013 Elegant Chaos. All rights reserved.
//

#import "LoadCommand.h"

@implementation LoadCommand

- (ECCommandLineResult)engine:(ECCommandLineEngine*)engine didProcessWithArguments:(NSMutableArray *)arguments
{
	NSLog(@"load command processed with arguments %@", [arguments componentsJoinedByString:@","]);

	return ECCommandLineResultOK;
}

@end
