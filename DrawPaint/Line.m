//
//  Line.m
//  DrawPaint
//
//  Created by Derek on 2017/7/6.
//  Copyright © 2017年 Derek. All rights reserved.
//

#import "Line.h"

@implementation Line
-(id)init{
    self=[super init];
    if (self) {
        [self setColor:[UIColor blackColor]];
    }
    return self;
}
@end
