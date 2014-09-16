//
//  StackClass.m
//  BasicObjectiveC
//
//  Created by 荒木 敦 on 2014/09/16.
//  Copyright (c) 2014年 武田 祐一. All rights reserved.
//

#import "StackClass.h"

@interface StackClass()

@property NSMutableArray *stack;

@end

@implementation StackClass

-(id)init
{
    if (self = [super init]) {
        _stack = @[].mutableCopy;
    }
    return self;
}

-(void)push:(id)object
{
    [self.stack addObject:object];
}

-(NSInteger)size
{
    return self.stack.count;
}

-(id)pop
{
    id obj = nil;
    NSInteger count = self.stack.count;
    NSLog(@"count=%d", count);
    
    if (0 < count) {
        NSInteger index = count - 1;
        obj = self.stack[index];
        [self.stack removeObjectAtIndex:index];
    }
    return obj;
}

-(NSString *)description
{
    return self.stack.description;
}


@end
