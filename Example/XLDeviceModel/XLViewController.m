//
//  XLViewController.m
//  XLDeviceModel
//
//  Created by ilongge on 05/13/2022.
//  Copyright (c) 2022 ilongge. All rights reserved.
//

#import "XLViewController.h"
#import "UIDevice+XLDeviceModel.h"
@interface XLViewController ()

@end

@implementation XLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIDevice *device = [UIDevice currentDevice];
    NSLog(@"%@", [UIDevice xl_currentDeviceModel]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
