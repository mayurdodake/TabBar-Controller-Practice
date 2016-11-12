//
//  DisplayViewController.m
//  TabBar
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//

#import "DisplayViewController.h"
#import "SaveData.h"
#import "AppDelegate.h"

@interface DisplayViewController ()

@end

@implementation DisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tablearray=[[NSMutableArray alloc]init];
    
//    
//    self.table=[[UITableView alloc]initWithFrame:CGRectMake(50, 100, 310, 500) style:UITableViewStylePlain];
//    
//    _table.delegate=self;
//    _table.dataSource=self;
//    
//    
//    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
//    
//    
//    
//    [self.view addSubview:_table];
//    

    
    UIApplication *myapplication=[UIApplication sharedApplication];
    
    AppDelegate *mydelegate=(AppDelegate *)myapplication.delegate;
    
    NSManagedObjectContext *context=mydelegate.managedObjectContext;
    
   
    
    NSFetchRequest *req=[NSFetchRequest fetchRequestWithEntityName:@"SaveData"];
    
    NSArray *result=[context executeFetchRequest:req error:nil];
    
    NSLog(@".........%@",result);
    
    
    for(SaveData *temp in result)
    {
        [_tablearray addObject:temp];
    }
    
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _tablearray.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:
                             @"cell"];
    
    SaveData *temp=[_tablearray objectAtIndex:indexPath.row];
    
    NSLog(@"%@",temp);
    
    
    cell.textLabel.text=[NSString stringWithFormat:@"%@ %@ %@ %@",temp.eid,temp.fname,temp.lname,temp.salary];
    return cell;
    
}
- (IBAction)maxBtnClick:(id)sender {
    
    NSSortDescriptor *sort=[NSSortDescriptor sortDescriptorWithKey:@"" ascending:YES selector:@selector(compare:)];
    
    NSArray *sortedarray=[self.tablearray sortedArrayUsingDescriptors:@[sort]];
    
    self.tablearray=[[NSMutableArray alloc]initWithObjects:[sortedarray objectAtIndex:0], nil];
    
    [self.table reloadData];
    
}

- (IBAction)sortBtnClick:(id)sender {
    
    NSSortDescriptor *sort=[NSSortDescriptor sortDescriptorWithKey:@"salary" ascending:YES selector:@selector(caseInsensitiveCompare:)];
    NSArray *sortedarray=[self.tablearray sortedArrayUsingDescriptors:@[sort]];
    
    self.tablearray=[[NSMutableArray alloc]initWithArray:sortedarray];
    
    [self.table reloadData];
    
    
}
@end
