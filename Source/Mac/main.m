//
//  main.m
//  ECCommandLineTest
//
//  Created by Sam Deane on 08/06/2013.
//  Copyright (c) 2013 Elegant Chaos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ECCommandLine/ECCommandLine.h>

int main(int argc, const char * argv[])
{
	NSInteger result;

    @autoreleasepool {


		ECCommandLineEngine* cl = [[ECCommandLineEngine alloc] init];
		result = [cl processArgumentCount:argc arguments:argv];
		if (result == 0)
		{
			[[NSRunLoop mainRunLoop] run];
		}
    }

    return (int)result;
}

