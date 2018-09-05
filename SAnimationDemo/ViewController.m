//
//  ViewController.m
//  SAnimationDemo
//
//  Created by Superman on 2018/9/4.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic)  UIView *firstView;
@property (strong, nonatomic)  UIView *secondView;
@property (strong, nonatomic)  UIView *threeView;
@property (strong, nonatomic)  UIView *fourView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initUI];
    [self restartAnimation];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
}
-(void)initUI{
    
}
-(void)restartAnimation{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
