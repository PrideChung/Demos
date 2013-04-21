//
//  ViewController.m
//  IconFontDemo
//
//  Created by 钟 子豪 on 13-4-21.
//  Copyright (c) 2013年 Pride Chung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 45, 45)];
	label.text = @"\uf09b";
	label.font = [UIFont fontWithName:@"FontAwesome" size:45];
	[self.view addSubview:label];
	
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"\uf0ad"
																			  style:UIBarButtonItemStyleBordered
																			 target:nil
																			 action:nil];
	[self.navigationItem.rightBarButtonItem setTitleTextAttributes:@{UITextAttributeFont:[UIFont fontWithName:@"FontAwesome" size:24]}forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
