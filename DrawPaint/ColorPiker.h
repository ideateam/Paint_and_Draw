//
//  ColorPiker.h
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ColorPickerDelegate <NSObject>

@optional

-(void)aColorPickerIsSelected:(UIColor *)color;

@end

@interface ColorPiker : UIView

@property (nonatomic,retain) id<ColorPickerDelegate> delegate;

@end
