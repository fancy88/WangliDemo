//
//  ViewController.m
//  WonlyIntelligenceNew
//
//  Created by apple on 17/1/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    [self getUI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)getUI{
    
    UITextField *nameTF = [[UITextField alloc] initWithFrame:CGRectMake(SCREENWIDTH / 2.0 - 100, 200, 200, 30)];
    nameTF.placeholder = @"请输入您的账号";
    UILabel *nameL = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    nameL.text = @"账号:";
    nameTF.leftView = nameL;
    nameTF.leftViewMode = UITextFieldViewModeAlways;
    nameTF.delegate = self;
    [self.view addSubview:nameTF];
    
    UITextField *passTF = [[UITextField alloc] initWithFrame:CGRectMake(SCREENWIDTH / 2.0 - 100, 250, 200, 30)];
    passTF.placeholder = @"请输入您的密码";
    UILabel *passL = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    passL.text = @"密码:";
    passTF.leftView = passL;
    passTF.leftViewMode = UITextFieldViewModeAlways;
    passTF.delegate = self;
    [self.view addSubview:passTF];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(SCREENWIDTH / 2.0 - 100, CGRectGetMaxY(passTF.frame) + 30, 200, 30);
    button.layer.cornerRadius = 5;
    button.layer.masksToBounds = YES;
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"登录" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
    UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(SCREENWIDTH / 2.0 - 50, CGRectGetMaxY(button.frame) + 50, 100, 30)];
     aLabel.text = @"Hello World";
    aLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:aLabel];
    //定义路径参数：
    CGRect rect  = CGRectMake(0, 0, 100, 30);
    CGSize radii = CGSizeMake(20, 20); // 定义原角大小
    UIRectCorner corners = UIRectCornerTopLeft |
    UIRectCornerBottomRight; // 标记左上和右下为圆角
    
    //创建路径，这里使用贝塞尔曲线
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:radii];
    
    //创建CAShapeLayer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.fillColor = [UIColor clearColor].CGColor;//RGBA(169, 252, 121, 0.5).CGColor;
    shapeLayer.strokeColor = [UIColor redColor].CGColor; // 设置线条的颜色
    shapeLayer.lineWidth = 1;
    shapeLayer.lineJoin = kCALineJoinRound;
    shapeLayer.lineCap  = kCALineCapRound;
    shapeLayer.path = path.CGPath; // 指定前面设置好path
    
    // 将创建好的CAShapeLayer添加为UILabel的子layer
    [aLabel.layer addSublayer:shapeLayer];
}


- (void)buttonAction: (UIButton *)button{
    NSLog(@"点击登录");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
