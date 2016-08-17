//
//  NSString+MD5.m
//  basicApp
//
//  Created by pro on 16/8/17.
//  Copyright © 2016年 goyakod. All rights reserved.
//

#import "NSString+MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (MD5)

+ (NSString *)MD5:(NSString *)string
{
    const char *cStr = [string UTF8String];
    unsigned char result[16];
    
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    
    NSMutableString *md5String = [NSMutableString string];
    
    for (int i = 0; i < 16; i++) {
        [md5String appendFormat:@"%02x",result[i]];
    }
    
    return md5String ;
}

@end
