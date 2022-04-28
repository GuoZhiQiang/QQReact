//
//  QQViewController.m
//  QQReact
//
//  Created by GuoZhiQiang on 04/27/2022.
//  Copyright (c) 2022 GuoZhiQiang. All rights reserved.
//

#import "QQViewController.h"
#import <React/RCTRootView.h>
#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>

@interface QQViewController ()
@property (nonatomic, strong) UIButton *btn;
@end

@implementation QQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [super viewDidLoad];
    self.btn = [UIButton new];
    [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [_btn setTitle:@"点击" forState:UIControlStateNormal];
    _btn.frame = CGRectMake(100, 200, 100, 100);
    _btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:_btn];
}
- (void)btnClick:(UIButton *)sender {
    NSLog(@"High Score Button Pressed");
    // AwesomeProject 这个 rn 项目 和 当前的 Example 工程处在不同的目录。
    // 可以在 AwesomeProject 这个 rn 项目里面启动 metro, 然后用下面的方式加载 rn 项目里的 bundle
    RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:bridge
                                                     moduleName:@"AwesomeProject"
                                              initialProperties:nil];

    rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
}

@end
