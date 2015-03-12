//
//  DemoTableViewCell+Configure.m
//  DemoTableView
//
//  Created by xiazhidi on 15/3/12.
//  Copyright (c) 2015年 baixing. All rights reserved.
//

#import "DemoTableViewCell+Configure.h"
#import "DemoObject.h"


@implementation DemoTableViewCell (Configure)

- (void)configureWithDemoObject:(DemoObject *)demoObject
{
    self.titleLabel.text = demoObject.title;
    self.contentLabel.text = demoObject.content;
}

@end
