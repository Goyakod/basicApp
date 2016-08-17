//
//  ZXTextField.h
//  jkycdoctor
//
//  Created by goyakod on 16/6/17.
//
//

/**
 *  边框可根据编辑状态变化
 *  可设置左右两边图片；
 *  设置右边图片然后把编辑功能设置为NO，该控件即可当做按钮使用。
 *  @param leftImgName  左边图片名称
 *  @param rightImgName 右边图片名称
 */


#import <UIKit/UIKit.h>


@interface ZXTextField : UITextField
/**
 *  输入框左侧图片
 */
@property (copy, nonatomic) NSString *leftImgName;
/**
 *  输入框右侧图片
 */
@property (copy, nonatomic) NSString *rightImgName;
/**
 *  正常边框颜色
 */
@property (strong, nonatomic) UIColor *normalColor;
/**
 *  高亮边框颜色(编辑时)
 */
@property (strong, nonatomic) UIColor *highlightColor;
/**
 *  输入的内容字体颜色
 */
@property (strong, nonatomic) UIColor *contentColor;

@end
