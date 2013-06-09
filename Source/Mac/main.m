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
	int result;
    @autoreleasepool {

		ECCommandLineEngine* cl = [[ECCommandLineEngine alloc] init];
		[[NSOperationQueue mainQueue] addOperationWithBlock:^{
			ECCommandLineResult processResult = [cl processArguments:argc argv:argv];
			if (processResult != ECCommandLineResultOK)
			{
				if (processResult == ECCommandLineResultOKButTerminate)
					processResult = ECCommandLineResultOK;

				exit(processResult);
			}
		}];

		result = NSApplicationMain(argc, argv);
    }

    return result;
}

