//
//  AVGHuman.m
//  CoreAnimations
//
//  Created by aiuar on 16.07.17.
//  Copyright © 2017 A.V. All rights reserved.
//

#import "AVGHuman.h"
#import <objc/runtime.h>

@implementation AVGHuman

- (instancetype)copyWithZone:(NSZone *)zone {
    AVGHuman *human = [AVGHuman new];
    human.firstName = self.firstName;
    human.lastName = self.lastName;
    human.age = self.age;
    
    return human;
}

@end
