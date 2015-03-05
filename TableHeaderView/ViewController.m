//
//  ViewController.m
//  TableHeaderView
//
//  Created by admin on 3/4/15.
//  Copyright (c) 2015 esd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.navigationItem.title = @"Table Header View";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.9 green:0.4 blue:0.5 alpha:1.0];
    self.navigationController.navigationBar.translucent = YES;
    
    UIView *headerView = [[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:nil options:nil] firstObject];
    self.tableView.tableHeaderView = headerView;
    self.tableView.tableHeaderView.backgroundColor = [UIColor purpleColor];
    [self sizeHeaderToFit];
}

- (void)sizeHeaderToFit {
    UIView *header = self.tableView.tableHeaderView;
    
    [header setNeedsLayout];
    [header layoutIfNeeded];
    
    CGSize headerSize = [header systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    CGFloat height = headerSize.height;
    CGRect frame = header.frame;
    
    frame.size.height = height;
    header.frame = frame;
    
    self.tableView.tableHeaderView = header;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 120;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"CellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        
    }
    
    cell.backgroundColor = [UIColor lightGrayColor];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Some text at row=%ld", (long)indexPath.row];
    
    return cell;
}


@end
