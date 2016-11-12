//
//  DisplayViewController.h
//  TabBar
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DisplayViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *table;

//@property(nonatomic,retain)UITableView *table;
@property(nonatomic,retain)NSMutableArray *tablearray;

- (IBAction)maxBtnClick:(id)sender;

- (IBAction)sortBtnClick:(id)sender;

@end
