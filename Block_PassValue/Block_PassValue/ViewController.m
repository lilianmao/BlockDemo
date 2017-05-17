//
//  ViewController.m
//  Block_PassValue
//
//  Created by 李林 on 2017/5/16.
//  Copyright © 2017年 lee. All rights reserved.
//

#import "ViewController.h"
#import "BlockTableView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    BlockTableView *tableView = [[BlockTableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:tableView];
    // 将block传值给tableView。
    tableView.cellTapHandler = ^(BlockTableViewCell *sender) {
        NSLog(@"点击了Cell %@", @(sender.index));
    };
    // block是一个代码块，但是暂时不执行，需要内部执行。
    // cell的点击事件，需要Controller处理，Controller将代码块传给cell，cell触发点击事件。
}

@end
