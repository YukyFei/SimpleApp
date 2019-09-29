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
@interface YBHomeViewController ()<UITabBarDelegate>

@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) YBCustomView *customView;

@end

@implementation YBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    UITabBar *tabbar = [[UITabBar alloc] initWithFrame:CGRectMake(0, 100, YBScreenWidth,YBScreenHeight)];
    tabbar.backgroundColor = [UIColor grayColor];
    tabbar.tintColor = [UIColor redColor];
    tabbar.barTintColor = [UIColor blackColor];
    tabbar.delegate = self;
    [self.view addSubview:tabbar];
}

- (void)btnClick
{
    self.customView.titleText = @"我更新了哟";
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    NSLog(@"");
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
