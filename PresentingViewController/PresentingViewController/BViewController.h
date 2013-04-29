//
//  BViewController.h
//  PresentingViewController
//
//  Created by 钟 子豪 on 13-4-29.
//  Copyright (c) 2013年 Pride Chung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AViewController.h"

@interface BViewController : UIViewController

@property (weak, nonatomic) AViewController *delegate;
@end
