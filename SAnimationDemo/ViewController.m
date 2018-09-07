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
    
    imageVIew=[self createImageViewWithFrame:_firstView.frame tag:kTAG_BASE_VALUE+1 named:@"pic_ceshi2_xingxing1"];
    [self.firstView addSubview:imageVIew];
    imageVIew=[self createImageViewWithFrame:_firstView.frame tag:kTAG_BASE_VALUE+2 named:@"pic_ceshi2_xingxing2"];
    [self.firstView addSubview:imageVIew];
    
    
    
    _secondView=[[UIView alloc]init];
    _secondView.frame=CGRectMake(165,150 , 45, 45);
    [self.view addSubview:_secondView];
    UIImageView *ima=[self createImageViewWithFrame:_secondView.frame tag:kTAG_BASE_VALUE named:@"pic_ceshi1_biaoqian"];
    [_secondView addSubview:ima];
    CGRect frameSec = CGRectMake(45 - 18, 0, 18, 19.5);
    UIView *contentView=[[UIView alloc]init];
    contentView.layer.anchorPoint=CGPointMake(0, 1);
    contentView.frame = _secondView.frame;
    contentView.tag =kTAG_BASE_VALUE + 10;
    [self.secondView addSubview:contentView];
    ima = [self createImageViewWithFrame:contentView.bounds tag:kTAG_BASE_VALUE named:@"pic_ceshi1_qipao(1)"];
    [contentView addSubview:ima];
    ima=[self createImageViewWithFrame:contentView.bounds tag:kTAG_BASE_VALUE+1 named:@"pic_ceshi1_zi"];
    ima.layer.anchorPoint =CGPointMake(0, 1);
    ima.frame = contentView.bounds;
    [contentView addSubview:ima];
    
    
    _threeView=[[UIView alloc]init];
    _threeView.frame=CGRectMake(165, 200, 45, 45);
    [self.view addSubview:_threeView];
    UIImageView *ima3=[self createImageViewWithFrame:_threeView.frame tag:kTAG_BASE_VALUE named:@"pic_ceshi3_biaoqian"];
    ima3.layer.anchorPoint = CGPointMake(0.5, 12/ 45.0);
    ima3.frame=_threeView.frame;
    [_threeView addSubview:ima3];
    
    
    _fourView=[[UIView alloc]init];
    _fourView.frame=CGRectMake(165, 250,45, 45);
    [self.view addSubview:_fourView];

    UIImageView *ima4=[self createImageViewWithFrame:_fourView.frame tag:kTAG_BASE_VALUE named:@"pic_ceshi2_biaoqian"];
    [_fourView addSubview:ima4];
    ima4 = [self createImageViewWithFrame:_fourView.frame tag:kTAG_BASE_VALUE+1 named:@"pic_ceshi2_xingxing1"];
    [self.fourView addSubview:ima4];
    ima4= [self createImageViewWithFrame:_fourView.frame tag:kTAG_BASE_VALUE+2 named:@"pic_ceshi2_xingxing2"];
    [self.fourView addSubview:ima4];
    

    
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
