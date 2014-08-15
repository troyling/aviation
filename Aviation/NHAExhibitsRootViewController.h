//
//  NHAExhibitsRootViewController.h
//  Aviation
//
//  Created by Troy Ling on 8/14/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHAExhibitsPageViewController.h"

@interface NHAExhibitsRootViewController : UIViewController<UIPageViewControllerDataSource>

@property (strong, nonatomic) NHAExhibitsPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;
@property (strong, nonatomic) NSArray *pageDescriptions;

@end
