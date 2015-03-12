//
//  DemoTableViewCell.h
//  DemoTableView
//
//  Created by xiazhidi on 15/3/12.
//  Copyright (c) 2015年 baixing. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString *const DemoTableViewCellReuseIdentifier;

@interface DemoTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@end
