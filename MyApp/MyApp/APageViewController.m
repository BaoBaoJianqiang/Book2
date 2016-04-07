//
//  APageViewController.m
//  MyApp
//
//  Created by jax on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "APageViewController.h"

@interface APageViewController () {
    UILabel* nameLabel;
    UILabel* ageLabel;
    UIButton* getInfoButton;
    UIButton* clearInfoButton;
}

@end

@implementation APageViewController

- (void)loadView {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"APageView" owner: self options: nil];
    self.view = list.lastObject;
    
    nameLabel = (UILabel*)[self.view viewWithTag: 100];
    nameLabel.text = @"";
    
    ageLabel = (UILabel*)[self.view viewWithTag: 200];
    ageLabel.text = @"";
    
    getInfoButton = (UIButton*)[self.view viewWithTag: 300];    
    [getInfoButton addTarget: self action: @selector(getInfo) forControlEvents:UIControlEventTouchUpInside];

    clearInfoButton = (UIButton*)[self.view viewWithTag: 400];
    [clearInfoButton addTarget: self action: @selector(clearInfo) forControlEvents:UIControlEventTouchUpInside];
}

- (void) getInfo {
    nameLabel.text = @"包小强";
    ageLabel.text = @"31.6";
}

- (void) clearInfo {
    nameLabel.text = @"";
    ageLabel.text = @"";
}

@end
