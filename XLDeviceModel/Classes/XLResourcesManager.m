//
//  XLResourcesManager.m
//  XLDeviceModel
//
//  Created by cc on 2020/5/9.
//  Copyright © 2020 admin. All rights reserved.
//

#import "XLResourcesManager.h"

@implementation XLResourcesManager


+ (NSBundle *)resourcesBundle {
    static dispatch_once_t onceToken;
    static NSBundle *resourcesBundle = nil;
    if (resourcesBundle == nil) {
        NSBundle *currrentBundle = [NSBundle bundleForClass:[self class]];
        NSString *buntdlePath = [currrentBundle pathForResource:@"XLDeviceModel" ofType:@"bundle"];
        NSBundle *bundle = [NSBundle bundleWithPath:buntdlePath];
        dispatch_once(&onceToken, ^{
            resourcesBundle = bundle;
        });
    }
    return resourcesBundle;
}

@end
