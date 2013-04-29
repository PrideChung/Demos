//
//  CViewController.m
//  PresentingViewController
//
//  Created by 钟 子豪 on 13-4-30.
//  Copyright (c) 2013年 Pride Chung. All rights reserved.
//

#import "CViewController.h"

@interface CViewController ()

@end

@implementation CViewController

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
	self.view.backgroundColor = [UIColor blueColor];
	
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 300, 60)];
	label.numberOfLines = 0;
	label.lineBreakMode = NSLineBreakByWordWrapping;
	label.backgroundColor = [UIColor clearColor];
	label.textColor = [UIColor whiteColor];
	label.text = @"Oh no, now you will stuck with BViewController";
	
	[self.view addSubview:label];
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

@end
