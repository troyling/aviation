//
//  NHAHomePageViewController.m
//  Aviation
//
//  Created by Troy Ling on 8/6/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import "NHAHomePageViewController.h"
#import "NHAUIGenerator.h"

@interface NHAHomePageViewController ()

@end

@implementation NHAHomePageViewController

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
    
    // set light color for the status bar
    self.navigationController.navigationBar.barStyle = UIStatusBarStyleLightContent;
    
    // Set up the layout for all buttons
    [NHAUIGenerator setButtonLayoutFor:@[self.hourAndRateBtn,
                                   self.newsAndEventBtn,
                                   self.membershipBtn,
                                   self.galleryBtn,
                                   self.exhibitsBtn,
                                   self.aboutUsBtn]];
    
    // Set background color
    [NHAUIGenerator setBackgroundColorFor:self.view];
    
    // Nav bar color and text color
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.20f green:0.40f blue:0.55f alpha:1.0f];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
        
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
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

- (IBAction)openPhone:(id)sender {
    NSURL *url = [NSURL URLWithString:@"tel:+16036694820"];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openMail:(id)sender {
    NSURL *url = [NSURL URLWithString:@"mailto:avmuseum@nhahs.org"];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openMap:(id)sender {
    NSURL *url = [NSURL URLWithString:@"http://maps.apple.com/maps?q=27+Navigator+Road,+Londonderry+NH+03053"];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openFacebook:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.facebook.com/nhahs"];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openYoutube:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.youtube.com/watch?feature=player_embedded&v=M_g39M7XkW4"];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openNewsAndEvents:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.facebook.com/nhahs/events"];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)openPhotos:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://www.facebook.com/nhahs/photos"];
    [[UIApplication sharedApplication] openURL:url];
}
@end
