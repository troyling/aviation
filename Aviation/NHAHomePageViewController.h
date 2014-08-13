//
//  NHAHomePageViewController.h
//  Aviation
//
//  Created by Troy Ling on 8/6/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHAHomePageViewController : UIViewController

// Buttons
@property (weak, nonatomic) IBOutlet UIButton *hourAndRateBtn;
@property (weak, nonatomic) IBOutlet UIButton *newsAndEventBtn;
@property (weak, nonatomic) IBOutlet UIButton *membershipBtn;
@property (weak, nonatomic) IBOutlet UIButton *galleryBtn;
@property (weak, nonatomic) IBOutlet UIButton *exhibitsBtn;
@property (weak, nonatomic) IBOutlet UIButton *aboutUsBtn;

// Action list
- (IBAction)openPhone:(id)sender;
- (IBAction)openMail:(id)sender;
- (IBAction)openMap:(id)sender;
- (IBAction)openFacebook:(id)sender;
- (IBAction)openYoutube:(id)sender;
- (IBAction)openNewsAndEvents:(id)sender;
- (IBAction)openPhotos:(id)sender;

@end
