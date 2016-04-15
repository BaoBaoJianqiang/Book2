//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "APageViewController.h"
#import "Navigator.h"

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
    NSString* url = @"BPageViewController";
    NSMutableDictionary* data = [[NSMutableDictionary alloc] init];
    [data setValue: @"Jianqiang" forKey: @"UserName"];
    
    [Navigator navigateTo: url withData: data];
}

@end
