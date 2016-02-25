//
//  main.m
//  TRLHash
//
//  Created by Michael Yau on 2/19/16.
//  Copyright © 2016 NSIRLConnection. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "TRLHash.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"%@",[TRLHash stringWithUnsignedInteger:25377615533200 expectedStringLength:8]);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
