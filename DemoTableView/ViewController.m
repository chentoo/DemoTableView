//
//  ViewController.m
//  DemoTableView
//
//  Created by xiazhidi on 15/3/12.
//  Copyright (c) 2015年 baixing. All rights reserved.
//

#import "ViewController.h"
#import "DemoObject+Api.h"
#import "DemoTableViewCell+Configure.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@property (strong, nonatomic) NSArray *demos;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [_tableView registerNib:[UINib nibWithNibName:@"DemoTableViewCell" bundle:nil] forCellReuseIdentifier:DemoTableViewCellReuseIdentifier];
    [self.view addSubview:self.tableView];

    __weak ViewController *weakSelf = (ViewController *)self;
    
    [DemoObject fetchWithCompletionBlock:^(NSArray *demoObjects, NSError *error) {
        if (!error)
        {
            weakSelf.demos = demoObjects;
            [weakSelf.tableView reloadData];
        }
    }];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.demos.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DemoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:DemoTableViewCellReuseIdentifier forIndexPath:indexPath];
    
    [cell configureWithDemoObject:self.demos[indexPath.row]];
    
    return cell;
}

@end
