//
//  MixiParentObject.m
//  MixiLeak
//
//  Created by 田村 航弥 on 2013/04/09.
//  Copyright (c) 2013年 mixi. All rights reserved.
//

#import "MixiParentObject.h"

@implementation MixiParentObject

-(void)dealloc {
    NSLog(@"%@", [self class]);
}

@end
