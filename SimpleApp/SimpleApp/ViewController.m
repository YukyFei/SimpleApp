//
//  ViewController.m
//  SimpleApp
//
//  Created by huaxuezoo on 2019/9/21.
//  Copyright © 2019 huaxuezoo. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UIButton *testBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _testBtn  = [UIButton buttonWithType:UIButtonTypeCustom];
    _testBtn.backgroundColor = [UIColor redColor];
    [_testBtn addTarget:self action:@selector(testBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_testBtn];
    
    [self setConstrains];
}

- (void)viewDidLayoutSubviews
{
    NSLog(@"viewDidLayoutSubviews");
}

- (void)setConstrains
{
    [_testBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(50);
    }];
}

- (void)testBtnClick
{
    [_testBtn mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo((self.testBtn.frame.size.width-10));
    }];
}

@end
