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

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZXTextView *textView = [[ZXTextView alloc] initWithFrame:CGRectMake(10, 20, 300, 100)];
    textView.placeholder = @"我是占位文字";
    textView.placeholderColor = [UIColor lightGrayColor];
    textView.contentColor = [UIColor greenColor];
    [self.view addSubview:textView];
    
    
    ZXTextField *textField = [[ZXTextField alloc] initWithFrame:CGRectMake(20, 150, 300, 50)];
    [self.view addSubview:textField];
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
