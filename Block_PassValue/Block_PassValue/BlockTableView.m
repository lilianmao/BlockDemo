//
//  BlockTableView.m
//  Block_PassValue
//
//  Created by 李林 on 2017/5/16.
//  Copyright © 2017年 lee. All rights reserved.
//

#import "BlockTableView.h"
#import "BlockTableViewCell.h"

@implementation BlockTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    if (self = [super initWithFrame:frame style:style]) {
        [self registerClass:[BlockTableViewCell class] forCellReuseIdentifier:@"cell"];
        self.dataSource = self;
        self.rowHeight = 80.f;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self reloadData];
    }
    return self;
}

- (NSInteger)numberOfSections {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BlockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.index = indexPath.row;
    
    // Method1：将Controller的Block包装传给cell。
//    __weak typeof(self) weakSelf = self;
//    cell.tapHandler = ^(id sender) {
//        if (weakSelf.cellTapHandler) {
//            weakSelf.cellTapHandler(sender);
//        }
//    };
    
    // Method2：无需包装，直接传值（仅限于block类型相同）
    if (self.cellTapHandler) {
        cell.tapHandler = self.cellTapHandler;
    }
    
    return cell;
}

@end
