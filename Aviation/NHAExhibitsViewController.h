//
//  NHAExhibitsViewController.h
//  Aviation
//
//  Created by Troy Ling on 8/11/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHAExhibitsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *heading;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *description;

@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;
@property NSString *descriptionText;

@end
