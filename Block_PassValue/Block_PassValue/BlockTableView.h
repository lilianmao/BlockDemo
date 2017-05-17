//
//  BlockTableView.h
//  Block_PassValue
//
//  Created by 李林 on 2017/5/16.
//  Copyright © 2017年 lee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockTableViewCell.h"

@interface BlockTableView : UITableView

@property (nonatomic, copy) TapHandler cellTapHandler;

@end
