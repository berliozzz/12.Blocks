//
//  Object.m
//  BlocksTest
//
//  Created by Nikolay Berlioz on 18.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "Object.h"

@interface Object ()

@property (copy, nonatomic) ObjectBlock objectBlock;

@end

@implementation Object

- (instancetype)init
{
    self = [super init];
    if (self) {
        __weak Object *weakSelf = self;
        
        self.objectBlock = ^{
            NSLog(@"%@", weakSelf.name);
        };
    }
    return self;
}

- (void) dealloc
{
    NSLog(@"Object is deallocated!");
}

- (void) testMethod:(ObjectBlock)block
{
    block();
}

@end
