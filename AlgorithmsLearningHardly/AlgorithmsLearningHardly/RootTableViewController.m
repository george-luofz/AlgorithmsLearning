//
//  RootTableViewController.m
//  AlgorithmsLearningHardly
//
//  Created by 罗富中 on 2017/12/10.
//  Copyright © 2017年 罗富中. All rights reserved.
//

#import "RootTableViewController.h"
#import "Chapter1ViewController.h"
@interface RootTableViewController ()

@property NSArray       *dataSource;
@property NSArray       *viewControllers;
@end

@implementation RootTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataSource = @[@[@"栈",@"队列"],@[],@[],@[],@[]];
    _viewControllers = @[[Chapter1ViewController class]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_dataSource[section] count];
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [NSString stringWithFormat:@"第%ld章",section+1];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",_dataSource[indexPath.section][indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc = [_viewControllers[indexPath.section] new];
    vc.view.backgroundColor = [UIColor whiteColor];
    vc.title = [NSString stringWithFormat:@"第%ld章",indexPath.section+1];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
