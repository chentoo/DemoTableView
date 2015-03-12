//
//  DemoObject+Api.h
//  DemoTableView
//
//  Created by xiazhidi on 15/3/12.
//  Copyright (c) 2015年 baixing. All rights reserved.
//

#import "DemoObject.h"

typedef void(^DemoObjectFetchCompletionBlock)(NSArray *demoObjects, NSError *error);

@interface DemoObject (Api)

+ (void)fetchWithCompletionBlock:(DemoObjectFetchCompletionBlock)completionBlock;

@end
