//
//  SGScrollView.m
//  SGPagingViewExample
//
//  Created by 高洋 on 2019/3/19.
//  Copyright © 2019 Sorgle. All rights reserved.
//

#import "SGScrollView.h"

@implementation SGScrollView

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    
    if (CGPointEqualToPoint(self.contentOffset, CGPointZero) == NO) {
        return YES;
    }
    
    CGPoint point = [gestureRecognizer locationInView:self];
    if (point.x <= 30) return NO;
    
    return YES;
}


@end
