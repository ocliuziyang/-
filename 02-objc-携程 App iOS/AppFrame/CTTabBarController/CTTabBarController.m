//
//  CTTabBarController.m
//  02-objc-携程 App iOS
//
//  Created by LZY on 07/11/2016.
//  Copyright © 2016 https://github.com/ocliuziyang . All rights reserved.
//

#import "CTTabBarController.h"
#import "CTNavigationController.h"
#import "HomeViewController.h"
@interface CTTabBarController ()

@end

@implementation CTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *vcArray = @[
                         @"HomeViewController",
                         @"HomeViewController",
                         @"HomeViewController",
                         @"HomeViewController",
                         @"HomeViewController"
                         ];
    NSArray *selectedIcons = @[@"icon_home_s", @"icon_trip_s", @"icon_discover_s",  @"icon_customer_s",  @"icon_my_s"];
    
    NSArray *normalIcons = @[@"icon_home_n", @"icon_trip_n", @"icon_discover_n",  @"icon_customer_n",  @"icon_my_n"];
    
    NSArray *titles = @[@"首页", @"行程", @"发现", @"客服", @"我的"];
    
    int i = 0;
    for (NSString *vcName in vcArray) {
        UIViewController *vc = [[NSClassFromString(vcName) alloc] init];
        vc.tabBarItem = [[UITabBarItem alloc] initWithTitle:titles[i] image:[UIImage imageNamed:normalIcons[i]] selectedImage:[UIImage imageNamed:selectedIcons[i]]];
        CTNavigationController *navgationController = [[CTNavigationController alloc]initWithRootViewController:vc];
        [self addChildViewController:navgationController];
        i++;
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
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
