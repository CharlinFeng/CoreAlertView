//
//  ViewController.m
//  CoreAlertView
//
//  Created by 冯成林 on 16/1/15.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "CoreAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (IBAction)btnClick:(id)sender {
    
    [CoreAlertView showAlertWithType:AlertInfo title:@"成功" desc:@"这是成功说明" destructiveTitle:@"好的" cancelTitle:@"取消" clickBlock:^(NSUInteger index) {
        
        NSLog(@"%i",index);
    }];
}



@end
