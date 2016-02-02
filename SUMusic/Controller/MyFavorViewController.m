//
//  MyFavorViewController.m
//  SUMusic
//
//  Created by 万众科技 on 16/2/1.
//  Copyright © 2016年 KevinSu. All rights reserved.
//

#import "MyFavorViewController.h"
#import "SongTableView.h"

@interface MyFavorViewController ()

@property (nonatomic, strong) SongTableView * songList;

@end

@implementation MyFavorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavigationTitle:@"我的收藏"];
    
    self.songList = [[SongTableView alloc]init];
    [self addChildViewController:self.songList];
    [self.view addSubview:self.songList.view];
    [self.songList loadListWithType:ListTypeMyFavor];
}


@end