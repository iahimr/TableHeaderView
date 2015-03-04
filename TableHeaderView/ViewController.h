//
//  ViewController.h
//  TableHeaderView
//
//  Created by admin on 3/4/15.
//  Copyright (c) 2015 esd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
