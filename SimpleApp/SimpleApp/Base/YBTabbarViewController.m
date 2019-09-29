//
//  YBTabbarViewController.m
//  SimpleApp
//
//  Created by huaxuezoo on 2019/9/22.
//  Copyright © 2019 huaxuezoo. All rights reserved.
//

#import "YBTabbarViewController.h"
#import "YBNavigationController.h"
#import "YBHomeViewController.h"
#import "YBVideoViewController.h"


@interface YBTabbarViewController ()

@end

@implementation YBTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YBHomeViewController *homeController = [[YBHomeViewController alloc] init];
    YBNavigationController *nav1 = [[YBNavigationController alloc] initWithRootViewController:homeController];
    homeController.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    
    
    YBVideoViewController *videoController = [[YBVideoViewController alloc] init];
    YBNavigationController *nav2 = [[YBNavigationController alloc] initWithRootViewController:videoController];
    videoController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:[UIImage imageNamed:@"location"] tag:1];
    self.tabBar.tintColor = [UIColor redColor];
    self.tabBar.barTintColor = [UIColor blackColor];
    self.viewControllers = @[nav1,nav2];
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
