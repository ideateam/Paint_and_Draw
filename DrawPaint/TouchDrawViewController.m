//
//  TouchDrawViewController.m
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import "TouchDrawViewController.h"
#import "TouchDrawView.h"
#import "ColorPiker.h"
@interface TouchDrawViewController ()
{
    BOOL isCleared;
    BOOL isSelectedColor;
}
@end

@implementation TouchDrawViewController

-(id)init{

    self=[super initWithNibName:@"TouchDrawViewController" bundle:nil];
    isSelectedColor=NO;
    isCleared=NO;
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    _bottomScrollView.contentSize=CGSizeMake(600, 60);
    _bottomScrollView.scrollEnabled=YES;
    _bottomScrollView.pagingEnabled=YES;
    _bottomScrollView.showsHorizontalScrollIndicator=NO;
    
    
    [_selector1 setDelegate:self];
    [_selector2 setDelegate:self];
    [_selector3 setDelegate:self];
    [_selector4 setDelegate:self];
    [_selector5 setDelegate:self];
    [_selector6 setDelegate:self];
    [_selector7 setDelegate:self];
    [_selector8 setDelegate:self];
    [_selector9 setDelegate:self];
    
    
    
    UIButton *ahead=[[UIButton alloc]initWithFrame:CGRectMake(0,0 ,30, 30)];
    
    ahead.clipsToBounds=YES;
    ahead.layer.cornerRadius=30/2;
    ahead.center=CGPointMake(self.view.bounds.size.width/2+40+15+60, 75);
    [ahead setImage:[UIImage imageNamed:@"forward.png"] forState:UIControlStateNormal];
    [ahead addTarget:self action:@selector(ahead) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *back=[[UIButton alloc]initWithFrame:CGRectMake(0,0 ,30, 30)];
    
    back.clipsToBounds=YES;
    back.layer.cornerRadius=30/2;
    back.center=CGPointMake(self.view.bounds.size.width/2-40+15-60, 75);
    [back setImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:back];
    [self.view addSubview:ahead];
    
}
-(void)back{
    [_drewArea undo];
}
-(void)ahead{
    [_drewArea redo];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)aColorPickerIsSelected:(UIColor *)color
{
    [_drewArea setDrawColor:color];
    
    _selector1.layer.borderWidth = 0.0f;
    _selector2.layer.borderWidth = 0.0f;
    _selector3.layer.borderWidth = 0.0f;
    _selector4.layer.borderWidth = 0.0f;
    _selector5.layer.borderWidth = 0.0f;
    _selector6.layer.borderWidth = 0.0f;
    _selector7.layer.borderWidth = 0.0f;
    _selector8.layer.borderWidth = 0.0f;
    _selector9.layer.borderWidth = 0.0f;
    //_selector0.layer.borderWidth = 0.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
