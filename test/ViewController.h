//
//  ViewController.h
//  test
//
//  Created by XuWei on 15/1/23.
//  Copyright (c) 2015年 XuWei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *tableView;
@property (nonatomic, strong) IBOutlet UIBarButtonItem *addButton;

@end

