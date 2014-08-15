//
//  NHAExhibitsRootViewController.m
//  Aviation
//
//  Created by Troy Ling on 8/14/14.
//  Copyright (c) 2014 New Hampshire Aviation. All rights reserved.
//

#import "NHAExhibitsRootViewController.h"
#import "NHAExhibitsViewController.h"
#import "NHAUIGenerator.h"

@interface NHAExhibitsRootViewController ()

@end

@implementation NHAExhibitsRootViewController

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
    
    // load the UI
    [NHAUIGenerator setBackgroundColorFor:self.view];
    
    // load the page contents
    _pageTitles = @[@"Volunteering", @"MHT Terminal Building", @"The Acey Ducey Home Built Aircradt", @"The Doodle Bug"];
    _pageImages = @[@"voluteering.jpg", @"terminal.jpg", @"home_built_aircraft.jpg", @"doodle_bug.jpg"];
    _pageDescriptions = @[@"Now here's a real teaching moment as our volunteer, Don, instructs students from Hampton Waves about how airplane surfaces change an aircraft's direction. They were all ears! This could be your school group; just give us a call.",
                          @"The MHT Terminal Building and Parking Garage have been added to our Diorama at the museum. This amazing, miniature work was done by our long distance (Alberta, CA) volunteer, Howard. Beautiful work! Please come see it at the museum!",
                          @"Here is what it is like to be in the home built aircraft. Make sure you check this out when you are visiting.",
                          @"Here's a front on shot of the Doodle Bug...This is a must see exhibit at the museum! Many parts have been re-united and are on display. The design and structure is outstanding."
                          ];
    
    // create page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NHAExhibitsPageViewController"];
   
    self.pageViewController.dataSource = self;
    
    NHAExhibitsViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];

    // display the content
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
    
    // load page view
    //[self startExhibition];
}
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((NHAExhibitsViewController *) viewController).pageIndex;
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((NHAExhibitsViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageTitles count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (NHAExhibitsViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    NHAExhibitsViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"NHAExhibitsViewController"];
    pageContentViewController.pageIndex = index;
    pageContentViewController.titleText = self.pageTitles[index];
    pageContentViewController.imageFile = self.pageImages[index];
    pageContentViewController.descriptionText = self.pageDescriptions[index];
    
    return pageContentViewController;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 * Start the photo exhibition
 */
- (void)startExhibition
{
    // Start the exhibition
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
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

@end
