//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "APageViewController.h"

#import "BPageViewController.h"

@interface APageViewController () {
    UIButton* gotoBButton;
}

@end

@implementation APageViewController

- (void)loadView {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"APageView" owner: self options: nil];
    self.view = list.lastObject;
    
    gotoBButton = (UIButton*)[self.view viewWithTag: 500];
    [gotoBButton addTarget: self action: @selector(gotoB) forControlEvents:UIControlEventTouchUpInside];
}

- (void) gotoB {
    BPageViewController * bViewController = [[BPageViewController alloc] init];
    bViewController.userName = @"jianqiang";
    [self.navigationController pushViewController: bViewController animated: YES];
}

@end
