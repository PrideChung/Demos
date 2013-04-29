//
//  ViewController.m
//  PresentingViewController
//
//  Created by 钟 子豪 on 13-4-29.
//  Copyright (c) 2013年 Pride Chung. All rights reserved.
//

#import "AViewController.h"
#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void)loadView
{
	[super loadView];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake(10, 10, 300, 40);
	[button setTitle:@"Click to start being awesome" forState:UIControlStateNormal];
	
	[button addTarget:self
			   action:@selector(showBController)
	 forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showBController
{
	BViewController *bVC = [[BViewController alloc] init];
	[self presentViewController:bVC animated:YES completion:nil];
}

@end
