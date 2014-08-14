//
//  NHAUIGenerator.m
//  Aviation
//
//  Created by Troy Ling on 8/13/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import "NHAUIGenerator.h"
#import <QuartzCore/QuartzCore.h>

@implementation NHAUIGenerator


/**
 * Set the buttons with the custom NHA style
 */
+ (void)setButtonLayoutFor:(NSArray *)buttons
{
    for (UIButton *btn in buttons) {
        // Round button
        btn.layer.cornerRadius = 5;
        btn.layer.borderColor = [UIColor blackColor].CGColor;
        
        // Background color
        UIColor *btnColor = [UIColor colorWithRed:0.60f green:0.0f blue:0.18f alpha:1.0f];
        [btn setBackgroundColor:btnColor];
    }
}

/**
 * Set the background color for the given view
 */
+ (void)setBackgroundColorFor:(UIView *)view
{
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = view.bounds;
    UIColor *start = [UIColor colorWithRed:0.20f green:0.40f blue:0.55f alpha:1.0f];
    UIColor *end = [UIColor colorWithRed:0.33f green:0.56f blue:0.73f alpha:1.0f];
    gradient.colors = [NSArray arrayWithObjects:(id)[start CGColor], (id)[end CGColor], nil];
    [view.layer insertSublayer:gradient atIndex:0];
}

@end
