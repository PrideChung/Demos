//
//  BViewController.m
//  PresentingViewController
//
//  Created by 钟 子豪 on 13-4-29.
//  Copyright (c) 2013年 Pride Chung. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
	[super loadView];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake(10, 10, 80, 40);
	[button setTitle:@"dismiss" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(dismissSelf) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
	self.view.backgroundColor = [UIColor yellowColor];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dismissSelf
{
	[self.delegate dismissBViewController];
}

@end
