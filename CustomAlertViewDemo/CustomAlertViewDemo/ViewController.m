//
//  ViewController.m
//  CustomAlertViewDemo
//
//  Created by xubojoy on 2018/2/7.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import "ViewController.h"
#import "FJAlertView.h"
#import "Constant.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:24.];
    btn.frame = CGRectMake(50,100, 100, 50);
    [btn addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)buttonPressed{
    FJAlertView *alert = [[FJAlertView alloc] initWithFrame:CGRectMake(0, 0, screen_width, screen_height) title:@"提示" message:@"注意这是一个测试版！" buttonTitle:nil];
    [alert show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
