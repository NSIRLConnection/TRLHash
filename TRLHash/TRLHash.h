//
//  TRLHash.h
//  TRLHash
//
//  Created by Michael Yau on 2/19/16.
//  Copyright © 2016 NSIRLConnection. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRLHash : NSObject

+ (NSUInteger)unsignedIntegerFromString:(NSString *)string;

+ (NSString *)stringWithUnsignedInteger:(NSUInteger)unsignedInteger
                   expectedStringLength:(NSUInteger)stringLength;

@end
