//
//  TRLHash.m
//  TRLHash
//
//  Created by Michael Yau on 2/19/16.
//  Copyright © 2016 NSIRLConnection. All rights reserved.
//

#import "TRLHash.h"

@implementation TRLHash

static const NSString *letters = @"acdegilmnoprstuw";

+ (NSUInteger)unsignedIntegerFromString:(NSString *)string {
    NSInteger hash = 7;
    for (NSInteger i = 0; i < string.length; i++) {
        NSString *character = [string substringWithRange:NSMakeRange(i, 1)];
        hash = (hash * 37 + [letters rangeOfString:character].location);
    }
    return hash;
}

+ (NSString *)stringWithUnsignedInteger:(NSUInteger)unsignedInteger
                   expectedStringLength:(NSUInteger)stringLength {
    NSMutableArray *indexes = [NSMutableArray array];
    for (NSInteger i = 0; i < stringLength; i++) {
        NSInteger index = unsignedInteger % 37;
        [indexes insertObject:@(index) atIndex:0];
        unsignedInteger /= 37;
    }
    NSString *unhashedString = [NSString string];
    for (NSNumber *index in indexes) {
        NSRange rangeOfCharacterToAppend = NSMakeRange(index.integerValue, 1);
        NSString *stringToAppend = [letters substringWithRange:rangeOfCharacterToAppend];
        unhashedString = [unhashedString stringByAppendingString:stringToAppend];
    }
    return unhashedString;
}

@end
