//
//  BlockTableViewCell.m
//  Block_PassValue
//
//  Created by 李林 on 2017/5/16.
//  Copyright © 2017年 lee. All rights reserved.
//

#import "BlockTableViewCell.h"

@implementation BlockTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.button];
        [self.button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        self.button.backgroundColor = [UIColor redColor];
        
        [self.button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)setIndex:(NSInteger)index {
    _index = index;
    [self.button setTitle:[NSString stringWithFormat:@"Cell Button %@", @(index)] forState:UIControlStateNormal];
}

- (void)buttonClick {
    // 接受tableView的Block，执行tableView的Block。
    if (self.tapHandler) {
        self.tapHandler(self);
    }
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.button.frame = CGRectMake(10, 10, self.contentView.bounds.size.width-20, self.contentView.bounds.size.height-20);
    self.button.layer.cornerRadius = 5.f;
}

@end
