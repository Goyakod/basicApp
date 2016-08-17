//
//  ZXDateStringTransfer.m
//
//  Created by zhangxue on 16/3/21.
//  Copyright © 2016年 Founder. All rights reserved.
//

#import "ZXDateStringTransfer.h"

@implementation ZXDateStringTransfer

/**
 *  获取不同的DateFormatter,便于进行字符串和日期类之间的相互转化
 */
+ (NSDateFormatter *)getDateFormatter:(FormatterType)formatterType
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    NSString *stringFormatter;
    
    switch (formatterType) {
        case FormatterType_HHmm:
            stringFormatter = @"HH:mm";
            break;
        case FormatterType_MMddHHmm:
            stringFormatter = @"MM/dd HH:mm";
            break;
        case FormatterType_yyMMddHHmm:
            stringFormatter = @"yy/MM/dd HH:mm";
            break;
        case FormatterType_yyMMddHHmmss:
            stringFormatter = @"yy/MM/dd HH:mm:ss";
            break;
        case FormatterType_yyyyMMdd_1:
            stringFormatter = @"yyyy-MM-dd";
            break;
        case FormatterType_yyyyMMdd_1_HHmm00:
            stringFormatter = @"yyyy-MM-dd HH:mm:00";
            break;
        case FormatterType_yyyyMMdd_2:
            stringFormatter = @"yyyy/MM/dd";
            break;
        case FormatterType_ddHHmm:
            stringFormatter = @"dd HH:mm";
            break;
        case FormatterType_MMddyy:
            stringFormatter = @"MM/dd/yy";
            break;
    }
    
    [formatter setDateFormat:stringFormatter];
    
    return formatter;
}

/**
 *  把时间类转化成字符串的方法
 *
 *  @param date NSDate
 *  @param type 时间格式类型
 *
 *  @return NSString 转化后的字符串
 */
+ (NSString *)stringFromDate:(NSDate *)date WithFormatterType:(FormatterType)type
{
    NSDateFormatter *dateFormatter = [ZXDateStringTransfer getDateFormatter:type];
    
    return [dateFormatter stringFromDate:date];
}


/**
 *  时间字符串转化成另一种时间字符串
 *
 *  @param string 时间字符串
 *  @param newType   目标时间格式
 *  @param oldType   现在的时间格式
 *  @return 转化后的字符串
 */
+ (NSString *)stringWithType:(FormatterType)newType FromString:(NSString *)string withFormatterType:(FormatterType)oldType
{
    NSDateFormatter *dateFormatter = [self getDateFormatter:oldType];
    
    NSDate *tmpDate = [dateFormatter dateFromString:string];
    
    dateFormatter = [self getDateFormatter:newType];
    
    return [dateFormatter stringFromDate:tmpDate];
}


/**
 *  把字符串转化为时间类的方法
 *
 *  @param string 时间字符串
 *  @param type   时间类型
 *
 *  @return NSDate 转化后的时间类
 */
+ (NSDate *)dateWithType:(FormatterType)newType FromString:(NSString *)string WithFormatterType:(FormatterType)oldType
{
    NSDateFormatter *dateFormatter = [self getDateFormatter:oldType];
    
    NSDate *tmpDate = [dateFormatter dateFromString:string];
    
    dateFormatter = [self getDateFormatter:newType];
    
    NSString *tmpString = [dateFormatter stringFromDate:tmpDate];
    
    return [dateFormatter dateFromString:tmpString];
}

/**
 *  时间类转化为另一种时间类
 *
 *  @param date 时间类型
 *  @param type 目标时间格式
 *
 *  @return 转化后的时间类
 */
+(NSDate *)dateFromDate:(NSDate *)date withFormatterType:(FormatterType)type
{
    NSDateFormatter *dateFormatter = [self getDateFormatter:type];
    
    NSString *tmpString = [dateFormatter stringFromDate:date];
        
    return [dateFormatter dateFromString:tmpString];
}


@end






