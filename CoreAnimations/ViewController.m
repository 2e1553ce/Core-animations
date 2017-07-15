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
    
    // Start button
    self.startButton = [UIButton buttonWithType:UIButtonTypeSystem];
    CGFloat startButtonY = CGRectGetHeight(self.view.bounds) - 40.f;
    CGFloat startButtonX = CGRectGetWidth(self.view.bounds) / 2 - 20.f;
    self.startButton.frame = CGRectMake(startButtonX, startButtonY, 40.f, 20.f);
    [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    [self.startButton addTarget:self
                         action:@selector(startButtonAction:)
               forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.startButton];
    
    // Red view
    self.rocket = [UIView new];
    self.rocket.frame = CGRectMake(0.f, 100.f, 40.f, 30.f);
    self.rocket.backgroundColor = UIColor.redColor;
    [self.view addSubview:self.rocket];
}

#pragma mark - Actions

- (void)startButtonAction:(UIButton *)sender {
    [self basicAnimation];
    //[self basicTransformation];
}

#pragma mark - Animations

- (void)basicAnimation {
    CABasicAnimation *animation = [CABasicAnimation animation];
    animation.keyPath = @"position.x";
    animation.fromValue = @77;
    animation.toValue = @355;
    animation.duration = 1;
    
    [self.rocket.layer addAnimation:animation forKey:@"basic"];
    self.rocket.layer.position = CGPointMake(355, 115);
}

#pragma mark - Transformations

- (void)basicTransformation {
    [self.rocket.layer setValue:[NSNumber numberWithFloat:4.0] forKeyPath:@"transform.rotation.x"];
    [self.rocket.layer setValue:[NSNumber numberWithFloat:4.0] forKeyPath:@"transform.scale.y"];
}

@end
