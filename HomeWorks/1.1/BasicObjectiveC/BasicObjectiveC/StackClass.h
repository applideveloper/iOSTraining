//
//  StackClass.h
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StackClass : NSObject

- (void)push:(id)object;
- (NSInteger)size;
- (id)pop;

@end
