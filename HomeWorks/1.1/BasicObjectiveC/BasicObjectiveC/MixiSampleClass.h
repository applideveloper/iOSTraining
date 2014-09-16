//
//  MixiSampleClass.h
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

// 列挙型
typedef NS_ENUM(NSInteger, SampleType) {
    SampleTypeHoge = 0,
    SampleTypeFuga,
    SampleTypePiyo
};

@interface MixiSampleClass : NSObject

@property (nonatomic, strong)NSString *name; // property

-(id)initWithName:(NSString*)name sampleType:(SampleType)sampleType; // instance method
+(NSString*)getStaticString; // class method

@end
