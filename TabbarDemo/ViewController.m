//
//  ViewController.m
//  TabbarDemo
//
//  Created by 王俊钢 on 2017/8/9.
//  Copyright © 2017年 wangjungang. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "LCTabBarController.h"
#import "firstViewController.h"
#import "secondViewController.h"
#import "thirdViewController.h"
#import "forthViewController.h"
#import "fifthViewController.h"
@interface ViewController ()
@property (nonatomic,strong) UIButton *setBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.setBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.setBtn.frame = CGRectMake(100, 80, 100, 60);
}

#pragma mark - getters


-(UIButton *)setBtn
{
    if(!_setBtn)
    {
        _setBtn = [[UIButton alloc] init];
        [_setBtn setTitle:@"跳转" forState:normal];
        [_setBtn addTarget:self action:@selector(setbtnclick) forControlEvents:UIControlEventTouchUpInside];
        [_setBtn setTitleColor:[UIColor blackColor] forState:normal];
        
    }
    return _setBtn;
}

-(void)setbtnclick
{
        //切换根视图控制器
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        firstViewController * VC0 = [[firstViewController alloc] init];
        VC0.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:0];
        UINavigationController * nav0 = [[UINavigationController alloc] initWithRootViewController:VC0];
        VC0.title = @"main";
        secondViewController * VC1 = [[secondViewController alloc] init];
        VC1.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMostViewed tag:1];
        UINavigationController * nav1 = [[UINavigationController alloc] initWithRootViewController:VC1];
        VC1.title = @"menu";
        thirdViewController *VC2 = [[thirdViewController alloc] init];
        UINavigationController * nav2 = [[UINavigationController alloc] initWithRootViewController:VC2];
        VC2.title = @"vc2";
        forthViewController *VC3 = [[forthViewController alloc] init];
        UINavigationController * nav3 = [[UINavigationController alloc] initWithRootViewController:VC3];
        VC3.title = @"vc3";
        fifthViewController *VC4 = [[fifthViewController alloc] init];
        UINavigationController * nav4 = [[UINavigationController alloc] initWithRootViewController:VC4];
        VC4.title = @"vc4";
        LCTabBarController * main = [[LCTabBarController alloc] init];
        main.viewControllers = @[nav0,nav1,nav2,nav3,nav4];
        appDelegate.window.rootViewController = main;
}

@end
