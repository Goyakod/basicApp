//
//  ZXDateStringTransfer.h
//
//  Created zhangxue pro on 16/3/21.
//  Copyright © 2016年 Founder. All rights reserved.
//

/**
 *  时间类和字符串转化功能类
 *
 *  当DateFormatterType枚举类型不存在Developer需要的时间格式时，只需给枚举DateFormatterType添加项，并且在.m文件中的getDateFormatter:类方法中swith添加case
 *
 */

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger,FormatterType){
    /**
     *  时间格式：@"HH:mm"
     */
    FormatterType_HHmm  = 0,
    
    /**
     *  时间格式：@"MM/dd HH:mm"
     */
    FormatterType_MMddHHmm,
    
    /**
     *  时间格式：@"yy/MM/dd HH:mm"
     */
    FormatterType_yyMMddHHmm,
    
    /**
     *  时间格式：@"yy/MM/dd HH:mm:ss"
     */
    FormatterType_yyMMddHHmmss,
    
    /**
     *  时间格式：@"yyyy-MM-dd"
     */
    FormatterType_yyyyMMdd_1,
    
    /**
     *  时间格式：@"yyyy-MM-dd HH:mm:00"
     */
    FormatterType_yyyyMMdd_1_HHmm00,
    
    /**
     *  时间格式：@"yyyy/MM/dd"
     */
    FormatterType_yyyyMMdd_2,
    
    /**
     *  时间格式：@"dd HH:mm"
     */
    FormatterType_ddHHmm,
    
    /**
     *  时间格式：@"MM/dd/yy"
     */
    FormatterType_MMddyy
};

@interface ZXDateStringTransfer : NSObject

/**
*  NSDate 转化成 NSString
*/
+ (NSString *)stringFromDate:(NSDate *)date WithFormatterType:(FormatterType)type;

/**
 *  oldType格式的NStrig 转化为 newType格式的NString
 */
+ (NSString *)stringWithType:(FormatterType)newType FromString:(NSString *)string withFormatterType:(FormatterType)oldType;

/**
*  NSString 转化成 NSDate
*/
+ (NSDate *)dateWithType:(FormatterType)newType FromString:(NSString *)string WithFormatterType:(FormatterType)oldType;

/**
 *  oldType格式的NSDate 转化 newType格式的NSDate
 */
+ (NSDate *)dateFromDate:(NSDate *)date withFormatterType:(FormatterType)type;



@end

