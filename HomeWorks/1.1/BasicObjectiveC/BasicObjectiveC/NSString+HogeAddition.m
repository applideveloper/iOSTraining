//
//  NSString+HogeAddition.m
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "NSString+HogeAddition.h"

@implementation NSString (HogeAddition)

-(NSString *)addHoge {
    return [NSString stringWithFormat:@"%@hoge", self];
}

@end
