//
//  NHAMembershipViewController.m
//  Aviation
//
//  Created by Troy Ling on 8/11/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import "NHAMembershipViewController.h"
#import "NHAUIGenerator.h"

@interface NHAMembershipViewController ()

@end

@implementation NHAMembershipViewController

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
    [NHAUIGenerator setBackgroundColorFor:self.view];
    
    [NHAUIGenerator setButtonLayoutFor:@[self.applyBtn]];
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

- (IBAction)applyVolunteerAndMembership:(id)sender {
    NSURL *url = [[NSURL alloc] initWithString:@"http://nhahs.org/pdffiles/membership-application-2014.pdf"];
    [[UIApplication sharedApplication] openURL:url];
}
@end
