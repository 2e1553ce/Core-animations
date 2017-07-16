//
//  AVGHuman.h
//  CoreAnimations
//
//  Created by aiuar on 16.07.17.
//  Copyright © 2017 A.V. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVGHuman : NSObject <NSCopying>

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, assign) NSInteger age;

@end
