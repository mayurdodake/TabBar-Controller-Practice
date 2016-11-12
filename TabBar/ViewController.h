//
//  ViewController.h
//  TabBar
//
//  Created by Felix-ITS 012 on 04/11/16.
//  Copyright © 2016 Felix-Harish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idtf;

@property (weak, nonatomic) IBOutlet UITextField *fnametf;

@property (weak, nonatomic) IBOutlet UITextField *lnametf;
@property (weak, nonatomic) IBOutlet UITextField *saltf;

- (IBAction)saveBtnClick:(id)sender;


@end

