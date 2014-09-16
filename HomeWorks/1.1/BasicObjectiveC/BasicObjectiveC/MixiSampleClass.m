//
//  MixiSampleClass.m
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "MixiSampleClass.h"

static NSString *const constString = @"const"; // クラス変数
static NSString *staticString = @"static"; // クラス変数

// 無名カテゴリ

@interface MixiSampleClass()

// 無名カテゴリ内で宣言したpropetyやメソッドはprivate扱いになる
@property(nonatomic, assign) BOOL isEnabled; // property
@property(nonatomic, assign) SampleType sampleType;

@end

@implementation MixiSampleClass

-(id)initWithName:(NSString *)name sampleType:(SampleType)sampleType {
    self = [self init];
    if (self) {
        _name = name;
        _isEnabled = YES;
        _sampleType = SampleTypeFuga;
    }
    return self;
}

+(NSString *)getStaticString {
    return staticString;
}

@end
