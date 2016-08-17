//
//  UIColor+ZXApp.m
//  basicApp
//
//  Created by pro on 16/8/17.
//  Copyright © 2016年 goyakod. All rights reserved.
//

#import "UIColor+ZXApp.h"

@implementation UIColor (ZXApp)

+ (UIColor *)ThemeColor
{
    return [UIColor colorWithRed:60.0/255.0 green:160.0/255.0 blue:225.0/255.0 alpha:1.0];
}

+ (UIColor *)SubThemeColor
{
    return [UIColor colorWithRed:160.0/255.0 green:160.0/255.0 blue:160.0/255.0 alpha:1.0];
}

+ (UIColor *)DeepFontColor
{
    return [UIColor colorWithRed:80.0/255.0 green:80.0/255.0 blue:80.0/255.0 alpha:1.0];
}

+ (UIColor *)TintFontColor
{
    return [UIColor colorWithRed:180.0/255.0 green:180.0/255.0 blue:180.0/255.0 alpha:1.0];
}

@end
