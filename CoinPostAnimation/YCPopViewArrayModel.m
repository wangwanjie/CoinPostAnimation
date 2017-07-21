//
//  YCPopViewArrayModel.m
//  YCDemo
//
//  Created by 刘胤辰 on 16/8/15.
//  Copyright © 2016年 it.com. All rights reserved.
//

#import "YCPopViewArrayModel.h"

@interface YCPopViewArrayModel()

@property(nonatomic,strong)NSTimer *timer;

@property (assign,nonatomic) int num;

@property (strong,nonatomic)UIView *superView;

@end

@implementation YCPopViewArrayModel

-(void)beginAnimWithSuperView:(UIView *)superView{
    
    self.superView= superView;
    
    [self test2];
}

-(void)test2{
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(next) userInfo:nil repeats:YES];
    
    self.timer  = timer;
}

-(void)next{
    
    CGFloat X = 15;
    CGFloat Y = -70;
    //运行5次结束
    if (self.num==50) {
        
        [self.timer invalidate];
        self.timer = nil;
        
        return;
    }
    
    UIImageView *imageV=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_gif9"]];
    imageV.alpha=0.8;
    
    [self.superView addSubview:imageV];
    
    //当为单数和偶数让偏移的方向对称，且改变它的中心点位置
    if (self.num%2==0) {
        
        X = -X;
    }
    
    //为第一个的时候让image的center在中间
    if (self.num==0) {
        
        imageV.center = self.superView.center;
    }else{
        imageV.center=CGPointMake([UIScreen mainScreen].bounds.size.width/2+X, [UIScreen mainScreen].bounds.size.height/2);
    }
    
    CGPoint center = CGPointMake([UIScreen mainScreen].bounds.size.width/2+1.5*X, [UIScreen mainScreen].bounds.size.height/2+Y);
    
    [UIView animateWithDuration:0.35 animations:^{
        
        imageV.alpha=0;
        imageV.center = center;
    } completion:^(BOOL finished) {
        
        [imageV removeFromSuperview];
    }];
    
    self.num ++;
}

@end
