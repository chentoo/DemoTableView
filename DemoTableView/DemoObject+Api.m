//
//  DemoObject+Api.m
//  DemoTableView
//
//  Created by xiazhidi on 15/3/12.
//  Copyright (c) 2015年 baixing. All rights reserved.
//

#import "DemoObject+Api.h"

@implementation DemoObject (Api)

+ (void)fetchWithCompletionBlock:(DemoObjectFetchCompletionBlock)completionBlock
{
    NSMutableArray *mArray = [[NSMutableArray alloc] initWithCapacity:10];
    
    for (NSInteger i = 0; i < 10; i++)
    {
        DemoObject *demoObject = [[DemoObject alloc] init];
        demoObject.title = [NSString stringWithFormat:@"这是第%lu个标题", (unsigned long)i];
        demoObject.content = [NSString stringWithFormat:@"这是第%lu个内容", (unsigned long)i];
        [mArray addObject:demoObject];
    }
    
    if (completionBlock)
    {
        completionBlock([mArray copy], nil);
    }
}

@end
