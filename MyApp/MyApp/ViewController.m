//
//  ViewController.m
//  MyApp
//
//  Created by baojianqiang on 16/4/6.
//  Copyright © 2016年 baojianqiang. All rights reserved.
//

#import "ViewController.h"

#import "Utils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSInteger sum = [Utils add: 10 and: 20];    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
