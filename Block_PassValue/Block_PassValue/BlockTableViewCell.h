//
//  BlockTableViewCell.h
//  Block_PassValue
//
//  Created by 李林 on 2017/5/16.
//  Copyright © 2017年 lee. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^TapHandler)(id sender);

@interface BlockTableViewCell : UITableViewCell

@property (nonatomic, copy) TapHandler tapHandler;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, assign) NSInteger index;

@end
