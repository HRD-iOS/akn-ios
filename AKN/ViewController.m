//
//  ViewController.m
//  PagingMenu
//
//  Created by Chum Ratha on 1/4/16.
//  Copyright © 2016 Chum Ratha. All rights reserved.
//

#import "ViewController.h"
#import "TablePageViewController.h"
#import "viewPageController.h"
#include "TableSourceViewController.h"
@interface ViewController ()
@property (nonatomic) CAPSPageMenu *pageMenu;
@end

@implementation ViewController
{
    __weak IBOutlet UIView *myview;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"ALL KHMER NEWS";
    //self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:30.0/255.0 green:30.0/255.0 blue:30.0/255.0 alpha:1.0];
    self.navigationController.navigationBar.barTintColor=[UIColor redColor];
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
    //[self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    //self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    self.navigationController.navigationBar.tintColor = [UIColor blueColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    TablePageViewController *controller1 = [self.storyboard instantiateViewControllerWithIdentifier:@"home"];
    controller1.title = @"Home";
    viewPageController *controller2 =[self.storyboard instantiateViewControllerWithIdentifier:@"category"];
    controller2.title = @"Category";
    TableSourceViewController *controller3=[self.storyboard instantiateViewControllerWithIdentifier:@"source"];
    controller3.title=@"Source";
    NSArray *controllerArray = @[controller1, controller2,controller3];
    NSDictionary *parameters = @{CAPSPageMenuOptionMenuItemSeparatorWidth: @(0.20),
                                 CAPSPageMenuOptionUseMenuLikeSegmentedControl: @(YES),
                                 CAPSPageMenuOptionMenuItemSeparatorPercentageHeight: @(0.1),
                                 CAPSPageMenuOptionScrollMenuBackgroundColor: [UIColor blackColor],
                                 CAPSPageMenuOptionSelectionIndicatorColor: [UIColor redColor],
                                 CAPSPageMenuOptionMenuItemSeparatorRoundEdges:@YES,
                                 };
    _pageMenu = [[CAPSPageMenu alloc] initWithViewControllers:controllerArray frame:CGRectMake(0.0,64, self.view.frame.size.width, self.view.frame.size.height) options:parameters];
    [self.view addSubview:_pageMenu.view];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
