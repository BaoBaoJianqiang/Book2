//
//  BPageViewController.m
//  MyApp
//
//  Created by jianqiang on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

#import "BPageViewController.h"

@interface BPageViewController () {
    UILabel* nameLabel;
}

@end

@implementation BPageViewController

@synthesize userName;

- (void)loadView {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"BPageView" owner: self options: nil];
    self.view = list.lastObject;
    
    nameLabel = (UILabel*)[self.view viewWithTag: 100];
    nameLabel.text = userName;
}

@end
