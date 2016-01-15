//
//  CoreAlertView.m
//  CoreAlertView
//
//  Created by 冯成林 on 16/1/15.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "CoreAlertView.h"

@implementation CoreAlertView

/** 自定义AlertView */
+(void)showAlertWithType:(AlertType)type title:(NSString *)title desc:(NSString *)desc destructiveTitle:(NSString *)destructiveTitle cancelTitle:(NSString *)cancelTitle clickBlock:(void(^)(NSUInteger index))clickBlock{

    //创建
    AMSmoothAlertView *alertView =nil;
    
    BOOL hasCancelButton = cancelTitle!=nil;

    alertView = [[AMSmoothAlertView alloc] initDropAlertWithTitle:title andText:desc andCancelButton:hasCancelButton forAlertType:type andColor:nil];

    
    //设置标题
    [alertView.defaultButton setTitle:destructiveTitle forState:UIControlStateNormal];
    if(hasCancelButton) [alertView.cancelButton setTitle:cancelTitle forState:UIControlStateNormal];
    
    //设置字体
    alertView.titleLabel.font = [UIFont systemFontOfSize:20.0f];
    alertView.textLabel.font =[UIFont systemFontOfSize:16.0f];
    
    //设置tag
    alertView.defaultButton.tag = 0;
    alertView.cancelButton.tag =1;
    
    alertView.completionBlock = ^(AMSmoothAlertView *alertView, UIButton *btn){
        
        NSUInteger index= btn.tag;
        
        if(clickBlock != nil) clickBlock(index);
    };
    
    [alertView show];
}

@end
