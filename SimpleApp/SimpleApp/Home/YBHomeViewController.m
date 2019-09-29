//
//  YBHomeViewController.m
//  SimpleApp
//
//  Created by huaxuezoo on 2019/9/22.
//  Copyright © 2019 huaxuezoo. All rights reserved.
//

#import "YBHomeViewController.h"
#import "YBCustomView.h"
#import <Masonry/Masonry.h>
@interface YBHomeViewController ()

@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) YBCustomView *customView;

@end

@implementation YBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    YBCustomView *customView = [[YBCustomView alloc] init];
    [self.view addSubview:customView];
    self.customView = customView;
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.backgroundColor = [UIColor orangeColor];
    [self.btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
    
    [customView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(400);
    }];
    
    [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(customView.mas_bottom).offset(10);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(40);
    }];
}

- (void)btnClick
{
    self.customView.titleText = @"我更新了哟";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
