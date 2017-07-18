//
//  AppDelegate.m
//  CoreAnimations
//
//  Created by aiuar on 12.07.17.
//  Copyright © 2017 A.V. All rights reserved.
//

#import "AppDelegate.h"
#import "AVGHuman.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // ******************************** Prototype *****************************************
    // ************************************************************************************
    AVGHuman *firstHuman = [AVGHuman new];
    firstHuman.firstName = @"Stephan";
    firstHuman.lastName = @"Smith";
    firstHuman.age = 20;
    
    AVGHuman *secondHuman = firstHuman;
    secondHuman.firstName = @"Gwen";
    secondHuman.lastName = @"Sick";
    secondHuman.age = 50;
    
    NSLog(@"1: %@\n2: %@", [firstHuman description], [secondHuman description]);
    // ************************************************************************************
    // ************************************************************************************
    
    // ******************************* Factory Method *************************************
    // ************************************************************************************
    
    // ************************************************************************************
    // ************************************************************************************
    
    return YES;
}

@end
