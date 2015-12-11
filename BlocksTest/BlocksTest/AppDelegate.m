//
//  AppDelegate.m
//  BlocksTest
//
//  Created by Nikolay Berlioz on 17.09.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Object.h"


typedef void (^OurTestBlock) (void);

@interface AppDelegate ()

@property (copy, nonatomic) OurTestBlock testBlock;
@property (strong, nonatomic) NSString *name;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
//    void (^testBlock)(void);    //запись в два действия
//
//    testBlock = ^
//    {
//        NSLog(@"test block");
//    };
    
//    testBlock();
//    testBlock();
//    testBlock();

//    void (^testBlockWithParams)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue) // сокращенная запись в одно действие
//    {
//        NSLog(@"testBlockWithParams %@ %ld", string, (long)intValue);
//    };
//
//    testBlockWithParams(@"TEST BLOCK", 111);
//    testBlockWithParams(@"TEST BLOCK", 111);
//    testBlockWithParams(@"TEST BLOCK", 111);
//    testBlockWithParams(@"TEST BLOCK", 111);
    
    
//    NSString* (^testBlockWithReturnValueParams)(NSString*, NSInteger) = ^(NSString* string, NSInteger intValue)
//    {
//        return [NSString stringWithFormat: @"testMethodWithReturnValueAndParams %@ %ld", string, (long)intValue];
//
//    };
//    
//    NSString *string = testBlockWithReturnValueParams(@"TEST BLOCK", 123);
//    
//    NSLog(@"%@", string);
    
//    __block NSString* testString = @"How is possible?";
//    
//    __block NSInteger i =  0;
//    
//    void (^testBlock2)(void);
//    
//    testBlock2 = ^
//    {
//        testString = [NSString stringWithFormat:@"How is possible? %ld", (long)++i];
//        NSLog(@"%@", testString);
//    };
//    
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();
//    testBlock2();

//    [self testBlockMethod:^{
//        NSLog(@"BLOCK!!!");
//    }];
    
    
//    OurTestBlock testblock = ^{
//        NSLog(@"OurTestBlock BLOCK!!!");
//    };
//    
//    [self testBlockMethod2:testblock];
    
//    Object *object = [[Object alloc] init];
//    
//    object.name = @"OBJECT";
//    
//    self.testBlock = ^{
//        NSLog(@"%@", object.name);
//    };
//
//    
////    self.testBlock = tb;
//    
//    self.testBlock();
    self.name = @"Hallo!";
    Object *object1 = [[Object alloc] init];
    object1.name = @"OBJECT";
    
//    [object1 testMethod:^{
//        NSLog(@"%@", self.name);
//    }];
    
    return YES;
}

- (void) testBlockMethod2: (OurTestBlock) testBlock
{
    NSLog(@"call testBlockMethod");
    
    testBlock();
}

- (void) testBlockMethod: (void (^) (void)) testBlock
{
    NSLog(@"call testBlockMethod");
    
    testBlock();
    testBlock();
    testBlock();
    testBlock();
}

- (NSString*) testMethodWithReturnValueAndParams: (NSString*) string value: (NSInteger) intValue
{
    return [NSString stringWithFormat: @"testMethodWithReturnValueAndParams %@ %ld", string, (long)intValue];
}

- (void) testMethodWithParams: (NSString*) string value: (NSInteger) intValue
{
    NSLog(@"testMethodWithParams %@ %ld", string, (long)intValue);
}

- (void) testMethod
{
    NSLog(@"test method");
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
