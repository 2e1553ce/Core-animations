//
//  ViewController.m
//  CoreAnimations
//
//  Created by aiuar on 12.07.17.
//  Copyright © 2017 A.V. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *startButton;
@property (nonatomic, strong) UIView *rocket;

@end

@implementation ViewController

#pragma mark - Life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.startButton = [UIButton buttonWithType:UIButtonTypeSystem];
    CGFloat startButtonY = CGRectGetHeight(self.view.bounds) - 40.f;
    CGFloat startButtonX = CGRectGetWidth(self.view.bounds) / 2 - 20.f;
    self.startButton.frame = CGRectMake(startButtonX, startButtonY, 40.f, 20.f);
    [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    [self.startButton addTarget:self
                         action:@selector(startButtonAction:)
               forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.startButton];
    
    self.rocket = [UIView new];
    self.rocket.frame = CGRectMake(0.f, 100.f, 40.f, 30.f);
    self.rocket.backgroundColor = UIColor.redColor;
    [self.view addSubview:self.rocket];
}

#pragma mark - Actions

- (void)startButtonAction:(UIButton *)sender {
    [self basicAnimation];
}

#pragma mark - Animations

- (void)basicAnimation {
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"position.x";
    animation.fromValue = @77;
    animation.toValue = @455;
    animation.duration = 1;
    
    [self.rocket.layer addAnimation:animation forKey:@"basic"];
}

@end
