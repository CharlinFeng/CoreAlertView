//
//  CoreAlertView.h
//  CoreAlertView
//
//  Created by 冯成林 on 16/1/15.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMSmoothAlertView.h"
#import "AMSmoothAlertConstants.h"

@interface CoreAlertView : AMSmoothAlertView

/** 自定义AlertView */
+(void)showAlertWithType:(AlertType)type title:(NSString *)title desc:(NSString *)desc destructiveTitle:(NSString *)destructiveTitle cancelTitle:(NSString *)cancelTitle clickBlock:(void(^)(NSUInteger index))clickBlock;

@end
