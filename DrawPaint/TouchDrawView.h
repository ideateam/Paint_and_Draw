//
//  TouchDrawView.h
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"
@interface TouchDrawView : UIView
{
    BOOL isCleared;
}
@property (nonatomic) Line *currentLine;
@property (nonatomic) NSMutableArray *lineCompleted;
@property (nonatomic) UIColor *drawColor;

- (void)undo;
- (void)redo;
@end
