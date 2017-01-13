//
//  ViewController.m
//  WonlyIntelligenceNew
//
//  Created by apple on 17/1/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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
    [self.view addSubview:nameTF];
    
    UITextField *passTF = [[UITextField alloc] initWithFrame:CGRectMake(SCREENWIDTH / 2.0 - 100, 250, 200, 30)];
    passTF.placeholder = @"请输入您的密码";
    UILabel *passL = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 30)];
    passL.text = @"密码:";
    passTF.leftView = passL;
    passTF.leftViewMode = UITextFieldViewModeAlways;
    [self.view addSubview:passTF];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
