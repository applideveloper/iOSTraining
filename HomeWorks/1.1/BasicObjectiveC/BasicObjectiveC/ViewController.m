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
#import "MixiPostViewController.h"
#import "StackClass.h"

@interface ViewController ()

@property (nonatomic, strong) MixiSampleViewController *sampleVC;
@property (assign) BOOL isModalOpenSecond;

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
    
    // 課題1 -----------------------------------------------
    NSMutableDictionary *domain_1 = [NSMutableDictionary dictionary];
    domain_1[@"domain"] = @"mixi.jp";
    NSMutableArray *entry = [NSMutableArray array];
    [entry addObject:@"list_voice.pl"];
    [entry addObject:@"list_diary.pl"];
    [entry addObject:@"list_mymall_item.pl"];
    domain_1[@"entry"] = entry;
    
    NSMutableDictionary *domain_2 = [NSMutableDictionary dictionary];
    domain_2[@"domain"] = @"mmall.jp";
    NSMutableArray *entry_2 = [NSMutableArray array];
    
    NSMutableDictionary *entry_2_1 = [NSMutableDictionary dictionary];
    entry_2_1[@"path"] = @"add_diary.pl";
    
    NSMutableArray *query = [NSMutableArray array];
    NSDictionary *tag_id = @{@"tag_id": @7};
    [query addObject:tag_id];
    entry_2_1[@"query"] = query;
    
    [entry_2 addObject:entry_2_1];
    domain_2[@"entry"] = entry_2;
    
    NSDictionary *domain_3 = @{@"domain": @"itunes.apple.com"};
    
    NSMutableArray *mutablearray = [NSMutableArray array];
    [mutablearray addObject:domain_1];
    [mutablearray addObject:domain_2];
    [mutablearray addObject:domain_3];
    
    NSLog(@"%@", mutablearray.description);
    
    for( id obj in mutablearray )
    {
        NSLog(@" >> %@", obj);
        id domain = obj[@"domain"];
        id entry = obj[@"entry"];
        NSLog(@"domain => %@",domain);
        NSLog(@"entry => %@", entry);
        
    }
    
    // ----------------------------------------------------
    
    // 課題2 -----------------------------------------------
    StackClass *stack = [[StackClass alloc]init];
    [stack push:@"push1"];
    [stack push:@"push2"];
    
    NSLog(@"desc=%@", stack.debugDescription);
    
    int count = 0;
    while (0 < stack.size) {
        count++;
        NSLog(@"pop%d=>%@",count, stack.pop);
    }
    
    // ----------------------------------------------------
    
    
   _sampleVC = [[MixiSampleViewController alloc] initWithNibName:@"MixiSampleViewController" bundle:nil];
    self.isModalOpenSecond = NO;
//    [self.view addSubview:_sampleVC.view];
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


- (IBAction)pressModalButton:(id)sender {
    MixiPostViewController *mixiPostViewController = [[MixiPostViewController alloc] init];
    mixiPostViewController.delegate = self;
    [self presentViewController:mixiPostViewController animated:YES completion:nil];
}

// delegate methodの実装
#pragma mark - MixiPostViewControllerDelegate methods
- (void)didPressCloseButton
{
    [self dismissViewControllerAnimated:YES completion:^{
        if (self.isModalOpenSecond) {
            MixiPostViewController *mixiPostViewController = [[MixiPostViewController alloc] init];
            mixiPostViewController.delegate = self;
            [self presentViewController:mixiPostViewController animated:YES completion:nil];
        }
        self.isModalOpenSecond = YES;
    }];
}


@end
