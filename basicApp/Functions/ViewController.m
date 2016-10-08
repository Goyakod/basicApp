//
//  ViewController.m
//  basicApp
//
//  Created by pro on 16/8/15.
//  Copyright © 2016年 goyakod. All rights reserved.
//

#import "ViewController.h"
#import "ZXTextView.h"
#import "ZXTextField.h"
#import "NSString+MD5.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    NSString *string = @"zhangxue1343457dsafoger2oit45h25g3";
    
    ZXLog_Goyakod(@"16:%@",[NSString MD5:string]);
    
    ZXLog_Goyakod(@"32:%@",[NSString MD5:string]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
