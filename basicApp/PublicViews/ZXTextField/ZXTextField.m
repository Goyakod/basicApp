//
//  ZXTextField.m
//  jkycdoctor
//
//  Created by goyakod on 16/6/17.
//
//

#import "ZXTextField.h"

@implementation ZXTextField

/**
 *  代码创建时调用
 */
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialization];
    }
    return self;
}

/**
 *  Xib创建时创建
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self initialization];

    }
    return self;
}


/**
 *  初始化
 */
- (void)initialization
{
    
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = self.normalColor.CGColor;
    
    self.textColor = self.contentColor;
    
    /**
     *  监听TextField的编辑状态
     */
    [self addTarget:self action:@selector(editingDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
    [self addTarget:self action:@selector(editingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
}

#pragma mark - getter 

- (UIColor *)normalColor
{
    if (!_normalColor) {
        _normalColor = [UIColor colorWithRed:216.0/255.0 green:216.0/255.0 blue:216.0/255.0 alpha:1.0];
    }
    return _normalColor;
}

- (UIColor *)highlightColor
{
    if (!_highlightColor) {
        _highlightColor = [UIColor colorWithRed:83.0/255.0 green:206.0/255.0 blue:194.0/225.0 alpha:1.0];
    }
    return _highlightColor;
}

- (UIColor *)contentColor
{
    if (!_contentColor) {
        _contentColor = [UIColor colorWithRed:80.0/255.0 green:80.0/255.0 blue:80.0/225.0 alpha:1.0];
    }
    return _contentColor;
}



/**
 *  处于编辑状态时边框和左边图片显示高亮颜色
 */
- (void)editingDidBegin:(UITextField *)textField
{
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = self.highlightColor.CGColor;
    if (self.leftImgName) {
        self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_press",self.leftImgName]]];
    }
}


/**
 *  编辑结束后边框显示正常颜色
 *  同事判断用户是否输入了有效内容
 *  输入有效内容左边图片显示高亮颜色否则显示正常颜色
 */
- (void)editingDidEnd:(UITextField *)textField
{
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = self.normalColor.CGColor;
    
    if ([textField.text isEqualToString:@""]) {
        if (self.leftImgName) {
            self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.leftImgName]];
        }
    }else{
        if (self.leftImgName) {
            self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_press",self.leftImgName]]];
        }
    }
}


- (void)setLeftImgName:(NSString *)imageName
{
    _leftImgName = imageName;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
}

- (void)setRightImgName:(NSString *)imageName
{
    _rightImgName = imageName;
    self.rightViewMode = UITextFieldViewModeAlways;
    self.rightView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
}



#pragma mark - ViewRectForBounds

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
    if (self.leftImgName) {
        return CGRectMake(5, (bounds.size.height-20)/2.0, 20, 20);
    }
    return CGRectMake(0, 0, 0, 0);
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
    if (self.rightImgName) {
        return CGRectMake(bounds.size.width-20, (bounds.size.height-10)/2.0, 10, 10);
    }
    return CGRectMake(0, 0, 0, 0);
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
    if (self.leftImgName) {
        return CGRectMake(30, 0, bounds.size.width-30 ,bounds.size.height);
    }
    return CGRectMake(10, 0, bounds.size.width-10 ,bounds.size.height);
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
    if (self.leftImgName) {
        return CGRectMake(30, 0, bounds.size.width-30 ,bounds.size.height);
    }
    return CGRectMake(10, 0, bounds.size.width-10 ,bounds.size.height);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
    if (self.leftImgName) {
        return CGRectMake(30, 0, bounds.size.width-30 ,bounds.size.height);
    }
    return CGRectMake(10, 0, bounds.size.width-10 ,bounds.size.height);
}


@end
