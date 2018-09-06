//
//  ViewController.m
//  SAnimationDemo
//
//  Created by Superman on 2018/9/4.
//  Copyright © 2018年 Superman. All rights reserved.
//

#import "ViewController.h"

#define kTAG_BASE_VALUE 90

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
    [self restartAnimation];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(restartAnimation) name:@"APPEnterForeground" object:nil];

}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"APPEnterForeground" object:nil];

}
-(void)restartAnimation{
    
}
-(void)initUI{
    _firstView=[[UIView alloc]init];
    _firstView.frame=CGRectMake(165, 100, 45, 45);
    [self.view addSubview:_firstView];
    UIImageView *imageVIew = [self createImageViewWithFrame:_firstView.frame tag:kTAG_BASE_VALUE named:@"pic_ceshi2_biaoqian"];
    imageVIew.layer.anchorPoint =CGPointMake(28.5/ 45.0, 16/ 45.0);
    imageVIew.frame=_firstView.frame;
    [_firstView addSubview:imageVIew];
    UIImageView *imageView2=[self createImageViewWithFrame:_secondView.frame tag:kTAG_BASE_VALUE+1 named:@"pic_ceshi2_xingxing1"];

    
    _secondView=[[UIView alloc]init];
    _secondView.frame=CGRectMake(165,150 , 45, 45);
    [self.view addSubview:_secondView];
    
    _threeView=[[UIView alloc]init];
    _threeView.frame=CGRectMake(165, 200, 45, 45);
    [self.view addSubview:_threeView];

    _fourView=[[UIView alloc]init];
    _fourView.frame=CGRectMake(165, 250,45, 45);
    [self.view addSubview:_fourView];

    
}
- (UIImageView *)createImageViewWithFrame:(CGRect)frame tag:(NSInteger)tag named:(NSString *)name{
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:frame];
    imageView.tag = tag;
    imageView.image = [UIImage imageNamed:name];
    return imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
