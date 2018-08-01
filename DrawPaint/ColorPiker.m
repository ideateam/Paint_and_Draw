//
//  ColorPiker.m
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import "ColorPiker.h"

@implementation ColorPiker

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    if ([_delegate respondsToSelector:@selector(aColorPickerIsSelected:)]) {
        [_delegate aColorPickerIsSelected:[self backgroundColor]];
    }
    self.layer.borderWidth=1.5f;
    self.layer.borderColor=[[UIColor redColor] CGColor];
}

@end
