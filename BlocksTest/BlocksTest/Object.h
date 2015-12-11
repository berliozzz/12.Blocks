//
//  Object.h
//  BlocksTest
//
//  Created by Nikolay Berlioz on 18.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ObjectBlock)(void);

@interface Object : NSObject

@property (strong, nonatomic) NSString *name;


- (void) testMethod: (ObjectBlock) block;

@end
