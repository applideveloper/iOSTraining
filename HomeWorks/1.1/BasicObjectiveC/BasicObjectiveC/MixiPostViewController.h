//
//  MixiPostViewController.h
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MixiPostViewControllerDelegate <NSObject>

-(void)didPressCloseButton;

@end


@interface MixiPostViewController : UIViewController

@property (nonatomic, weak) id<MixiPostViewControllerDelegate> delegate; // delegateオブジェクト

@property (weak, nonatomic) IBOutlet UIButton *buttonBack;
- (IBAction)pressClosedButton:(id)sender;

@end
