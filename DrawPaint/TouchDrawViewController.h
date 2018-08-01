//
//  TouchDrawViewController.h
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPiker.h"
#import "TouchDrawView.h"


@interface TouchDrawViewController : UIViewController<ColorPickerDelegate>

@property (weak, nonatomic) IBOutlet ColorPiker *selector1;
@property (weak, nonatomic) IBOutlet ColorPiker *selector2;
@property (weak, nonatomic) IBOutlet ColorPiker *selector3;
@property (weak, nonatomic) IBOutlet ColorPiker *selector4;
@property (weak, nonatomic) IBOutlet ColorPiker *selector5;
@property (weak, nonatomic) IBOutlet ColorPiker *selector6;
@property (weak, nonatomic) IBOutlet ColorPiker *selector7;
@property (weak, nonatomic) IBOutlet ColorPiker *selector8;
@property (weak, nonatomic) IBOutlet ColorPiker *selector9;
@property (weak, nonatomic) IBOutlet ColorPiker *selector0;
@property (strong, nonatomic) IBOutlet UIScrollView *bottomScrollView;

@property (weak, nonatomic) IBOutlet TouchDrawView *drewArea;
@end
