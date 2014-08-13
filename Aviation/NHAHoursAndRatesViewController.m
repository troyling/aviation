//
//  NHAHoursAndRatesViewController.m
//  Aviation
//
//  Created by Troy Ling on 8/11/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import "NHAHoursAndRatesViewController.h"

@interface NHAHoursAndRatesViewController ()

@end

@implementation NHAHoursAndRatesViewController

const int POPUP_TAG = 1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/**
 * Pop up view for contacting aviation museum
 */
- (IBAction)getContactUsActionSheet:(id)sender {
    UIActionSheet *popup = [[UIActionSheet alloc] initWithTitle:nil
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                         destructiveButtonTitle:nil
                                              otherButtonTitles:@"Plan for Group Tour",
                                                                @"Rent Your Event",
                            nil];
    popup.tag = POPUP_TAG;
    [popup showInView:self.view];
}


/**
 * Delegate function to handle events on the popup actionsheet
 */
- (void)actionSheet:(UIActionSheet *)popup clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (popup.tag == POPUP_TAG) {
        if (buttonIndex == 0) {
            // Call museum for planning group tour
            [self callForGroupTour];
        } else if (buttonIndex == 1) {
            // visit museum website for renting event
            [self rentYourEvent];
        }
    }
}

/**
 * Call museum
 */
- (void)callForGroupTour {
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"tel:+16036694877"]];
    [[UIApplication sharedApplication] openURL:url];
}

/**
 * Visit website
 */
- (void)rentYourEvent {
    NSURL *url = [NSURL URLWithString:@"http://nhahs.org/images/stories/Event_Center_Brochure_LORES.pdf"];
    [[UIApplication sharedApplication] openURL:url];
}
@end
