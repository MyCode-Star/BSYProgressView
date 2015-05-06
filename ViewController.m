//
//  ViewController.m
//  BSYProgressView
//
//  Created by mac on 15/5/6.
//  Copyright (c) 2015年 BSY. All rights reserved.
//

#import "ViewController.h"
#import "BSYView.h"
@interface ViewController ()
{
    UIButton *_button;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [ button setTitle:@"点击加进度" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    button.frame = CGRectMake(100, 300, 100, 100);
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    _button = button;
    // Do any additional setup after loading the view, typically from a nib.
    
    BSYView *circleProgress = [[BSYView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    circleProgress.progress = 0.00;
    [self.view addSubview:circleProgress];
}

-(void)buttonClick:(UIButton *)sender
{
    static CGFloat number = 0.00;
    BSYView *circleProgress = [[BSYView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    if (number<=1.00) {
        number= number+0.1;
    }
    circleProgress.progress = number;
    [self.view addSubview:circleProgress];

    if (number==1.00) {
        _button.enabled = NO;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
