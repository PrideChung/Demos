//
//  BViewController.m
//  PresentingViewController
//
//  Created by 钟 子豪 on 13-4-29.
//  Copyright (c) 2013年 Pride Chung. All rights reserved.
//

#import "BViewController.h"
#import "CViewController.h"

@interface BViewController ()

@property (strong, nonatomic) NSTimer *timer;
@property (weak, nonatomic) UILabel *messageLabel;
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
	
	UIButton *showCViewControllerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	showCViewControllerButton.frame = CGRectMake(10, 10, 300, 40);
	[showCViewControllerButton setTitle:@"Don't click me! You can still go back" forState:UIControlStateNormal];
	[showCViewControllerButton addTarget:self action:@selector(showCViewController) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:showCViewControllerButton];
	self.view.backgroundColor = [UIColor yellowColor];
	
	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, 300, 60)];
	label.numberOfLines = 0;
	label.lineBreakMode = NSLineBreakByWordWrapping;
	label.backgroundColor = [UIColor clearColor];
	label.text = @"I'm doing something awesome and time consuming, wait for me for 10 sec, then I will \"try very hard\" to dismiss myself!";
	[self.view addSubview:label];
	self.messageLabel = label;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
	self.timer = [NSTimer scheduledTimerWithTimeInterval:10.0
												  target:self
												selector:@selector(iAmDone)
												userInfo:nil
												 repeats:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)iAmDone
{
	// I think this will dismiss myself, I hope ...
	[self dismissViewControllerAnimated:YES completion:nil];
	
	// Uncomment this line and replace the above one to save the world! You can still meet AViewController again even if you pushed the very dangerous button!
	// [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
	
	//But if I got CViewController above me ...
	if (self.presentedViewController) {
		self.messageLabel.text = @"Damn, I dismiss the CViewController instead! Sorry I was about to dismiss myself, and we stuck here, farewell AViewController!";
		self.messageLabel.textColor = [UIColor redColor];
	}
	
	/* 
	 The presenting view controller is responsible for dismissing the view controller it presented.
	 Read the fucking manual and stop abusing "dissmissViewController"!
	 https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/Reference/Reference.html#//apple_ref/occ/instm/UIViewController/dismissViewControllerAnimated:completion:
	*/
}

- (void)showCViewController
{
	CViewController *cVC = [[CViewController alloc] init];
	[self presentViewController:cVC animated:YES completion:nil];
}

- (void)dismissFromBViewController
{
	[self dismissViewControllerAnimated:YES completion:nil]; // which view controller will get dismiss? B or C ?
}

@end
