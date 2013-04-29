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
	button.frame = CGRectMake(10, 10, 80, 40);
	[button setTitle:@"show" forState:UIControlStateNormal];
	
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
	bVC.delegate = self;
	[self presentViewController:bVC
					   animated:YES
					 completion:nil];
}

- (void)dismissBViewController
{
	[self dismissViewControllerAnimated:YES completion:nil];
	
	// do something else ...
}

@end
