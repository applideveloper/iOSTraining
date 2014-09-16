//
//  MixiSampleViewController.m
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "MixiSampleViewController.h"

@interface MixiSampleViewController ()


@end

@implementation MixiSampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [_grayView setBackgroundColor:[UIColor redColor]];
    [_grayView setFrame:CGRectMake(_grayView.frame.origin.x, _grayView.frame.origin.y, _grayView.frame.size.width/2, _grayView.frame.size.height/2)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
