//
//  NHAHoursAndRatesViewController.h
//  Aviation
//
//  Created by Troy Ling on 8/11/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NHAHoursAndRatesViewController : UIViewController<UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIButton *contactUsBtn;

- (IBAction)getContactUsActionSheet:(id)sender;

@end
