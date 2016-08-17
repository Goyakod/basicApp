//
//  UIFont+ZXApp.m
//  basicApp
//
//  Created by pro on 16/8/17.
//  Copyright © 2016年 goyakod. All rights reserved.
//

#import "UIFont+ZXApp.h"

@implementation UIFont (ZXApp)

+ (UIFont *)BigFont
{
    UIFont *font = [UIFont systemFontOfSize:17.0];
    return font;
}

+ (UIFont *)NormarlFont
{
    UIFont *font = [UIFont systemFontOfSize:16.0];
    return font;
}

+ (UIFont *)BoldFont
{
    UIFont *font = [UIFont boldSystemFontOfSize:16.0];
    return font;
}

@end
