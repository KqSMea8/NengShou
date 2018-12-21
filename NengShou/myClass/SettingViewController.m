//
//  SettingViewController.m
//  NengShou
//
//  Created by qbsqbq on 2018/12/20.
//  Copyright © 2018年 MCEJ. All rights reserved.
//

#import "SettingViewController.h"
#import "AboutViewController.h"

@interface SettingViewController () <UITableViewDelegate,UITableViewDataSource>
//@property(nonatomic,retain)UITableView *tableView;
@end


@implementation SettingViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.title = @"设置";
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    cell.textLabel.text = @[@"清除缓存",@"关于能手",@"版本号",@"简介"][indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (indexPath.row == 2) {
        NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
        NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
        cell.detailTextLabel.text = app_Version;
    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        [MHProgressHUD showMsgWithoutView:@"清除缓存成功"];

    }else if (indexPath.row == 1 ){
        AboutViewController *about = [[AboutViewController alloc]init];
        [self.navigationController pushViewController:about animated:YES];
    }else if (indexPath.row == 2){
        [MHProgressHUD showMsgWithoutView:@"已是最新版本"];

    }
}



@end
