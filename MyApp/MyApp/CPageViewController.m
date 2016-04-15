//
//  CPageViewController.m
//  MyApp
//
//  Created by jianqiang on 13-9-2.
//  Copyright (c) 2013年 Bao. All rights reserved.
//

//.h文件
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BaseViewController.h"

@interface CPageViewController : BaseViewController<UITableViewDataSource,UITableViewDelegate>

@end


//.m文件
#import "CPageViewController.h"
#import "Navigator.h"

@interface CPageViewController () {
    UITableView *dataTable;
    
    NSMutableArray *dataArray;
}

@end

@implementation CPageViewController

- (void)initVariables {

}

- (void)initViews {
    //1.从xib中获取View
    NSArray* list = [[NSBundle mainBundle] loadNibNamed: @"CPageView" owner: self options: nil];
    self.view = list.lastObject;

    dataTable = (UITableView*)[self.view viewWithTag: 500];
    [dataTable setDelegate: self];
    [dataTable setDataSource: self];
    [self.view addSubview: dataTable];
    
    dataArray = [[NSMutableArray alloc] initWithObjects:@"川办", @"海底捞", @"8号苑", nil];
}

- (void)loadData {

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"餐饮";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [dataArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier: identifier];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier: identifier];
    }
    
    [[cell textLabel] setText:[dataArray objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* name = [dataArray objectAtIndex:indexPath.row];
    
    NSString* url = @"BPageViewController";
    NSMutableDictionary* data = [[NSMutableDictionary alloc] init];
    [data setValue: name forKey: @"UserName"];
    
    [Navigator navigateTo: url withData: data];
}

@end
