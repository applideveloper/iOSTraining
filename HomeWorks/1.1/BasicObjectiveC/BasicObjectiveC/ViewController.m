//
//  ViewController.m
//  BasicObjectiveC
//
//  Created by 武田 祐一 on 2013/04/16.
//  Copyright (c) 2013年 武田 祐一. All rights reserved.
//

#import "ViewController.h"
#import "MixiSampleClass.h"
#import "NSString+HogeAddition.h"
#import "MixiSampleViewController.h"

@interface ViewController ()

@property (nonatomic, strong) MixiSampleViewController *sampleVC;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // TODO ここに課題を書き進めていってください
    MixiSampleClass *mixiSampleObject = [[MixiSampleClass alloc] initWithName:@"hoge" sampleType:SampleTypeFuga];
    NSLog(@"mixiSampleObject.name: %@", mixiSampleObject.name);
    NSLog(@"mixiSampleObject.name.addHoge: %@", mixiSampleObject.name.addHoge);
    NSLog(@"mixiSampleObject.getStaticString: %@", [MixiSampleClass getStaticString]);
    
   _sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    [self.view addSubview:_sampleVC.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)pressAddButton:(id)sender {
    [self.view addSubview:_sampleVC.view];
}

- (IBAction)pressRemoveButton:(id)sender {
    [_sampleVC.view removeFromSuperview];
}
@end
