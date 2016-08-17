//
//  ViewControllerCallBackDelegate.h
//
//  Created by zhangxue on 16/4/26.
//  Copyright © 2016年 Founder. All rights reserved.
//

/* ViewControllerCallBackDelegate_h */

/**
 *  这是一个公用的回调代理.可以回传id类型的对象~
 */

#import "ViewControllerCallBackDelegate.h"

@protocol ViewControllerCallBackDelegate <NSObject>

/*
 *  @param viewController 从哪个控制器回调过来的
 *  @param obj            回调过来的信息
 */
- (void)viewController:(UIViewController *)viewController CallBack:(id)obj;

@end