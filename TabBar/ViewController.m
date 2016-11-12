//
//  ViewController.m
//  TabBar
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//

#import "ViewController.h"
#import "SaveData.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveBtnClick:(id)sender {
    
    UIApplication *myapplication=[UIApplication sharedApplication];
    
    AppDelegate *mydelegate=(AppDelegate *)myapplication.delegate;
    
    NSManagedObjectContext *context=mydelegate.managedObjectContext;
    
    SaveData *s1=[NSEntityDescription insertNewObjectForEntityForName:@"SaveData" inManagedObjectContext:context];
    
    s1.eid=_idtf.text;
    s1.fname=_fnametf.text;
    s1.lname=_lnametf.text;
    s1.salary=[NSNumber numberWithInteger:[_saltf.text intValue]];
    
    
    [context save:nil];
    NSLog(@"%@",s1);
    
    
}
@end
