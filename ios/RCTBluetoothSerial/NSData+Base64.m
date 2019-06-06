//
//  NSData+Base64.m
//  RCTBluetoothSerial
//
//  Created by Spring J Phoenix on 2019/2/24.
//  Copyright © 2019 Jakub Martyčák. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Base64)

- (NSString *) stringPaddedForBase64;

@end

@implementation NSString (Base64)

- (NSString *) stringPaddedForBase64 {
    NSUInteger paddedLength = self.length + (self.length % 3);
    return [self stringByPaddingToLength:paddedLength withString:@"=" startingAtIndex:0];
}

@end

@implementation NSData (Base64)

- (instancetype) initWithBase64EncodedString:(NSString *)base64String {
    return [self initWithBase64Encoding:[base64String stringPaddedForBase64]];
}

- (NSString *) base64EncodedString {
    return [self base64Encoding];
}

@end
