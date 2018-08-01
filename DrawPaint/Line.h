//
//  Line.h
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
@interface Line : NSObject
@property (nonatomic,assign) CGPoint begin;
@property (nonatomic,assign) CGPoint end;
@property (nonatomic,retain) UIColor *color;
@end
