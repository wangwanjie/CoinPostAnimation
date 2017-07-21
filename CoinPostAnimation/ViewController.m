//
//  ViewController.m
//  CoinPostAnimation
//
//  Created by VanJay on 16/8/15.
//  Copyright © 2016年 VanJay. All rights reserved.
//

#import "ViewController.h"
#import "YCPopViewArrayModel.h"



@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor darkGrayColor];
}

//点击
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    YCPopViewArrayModel *modelList = [[YCPopViewArrayModel alloc]init];
    [modelList beginAnimWithSuperView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
