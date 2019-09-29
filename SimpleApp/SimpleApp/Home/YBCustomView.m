//
//  YBCustomView.m
//  SimpleApp
//
//  Created by huaxuezoo on 2019/9/22.
//  Copyright © 2019 huaxuezoo. All rights reserved.
//

#import "YBCustomView.h"
#import <Masonry/Masonry.h>
@interface YBCustomView()

@property (nonatomic, strong) UIView *backgroundView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *btn;

@end

@implementation YBCustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self createUI];
    }
    return self;
}

- (void)createUI {
    
    self.backgroundView = [[UIView alloc] init];
    self.backgroundView.backgroundColor = [UIColor redColor];
    [self addSubview:self.backgroundView];
    
    [self.backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self).offset(10);
    }];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.text = @"我是一个title";
    self.titleLabel.textColor = [UIColor greenColor];
    [self addSubview:self.titleLabel];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(self.backgroundView).offset(20);
        
    }];
    
    self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.btn.backgroundColor = [UIColor orangeColor];
    [self.btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.btn];
    
    [self.btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.backgroundView);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(44);
    }];
    
}

- (void)btnClick
{
    [self.titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backgroundView).offset(10);
    }];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    NSLog(@"layoutSubviews");
}

- (void)updateConstraints
{
    [super updateConstraints];
    NSLog(@"updateConstraints");
}

- (void)setTitleText:(NSString *)titleText
{
    _titleText = titleText;
    
    self.titleLabel.text = titleText;
    
    [self.titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backgroundView);
    }];
}

@end
