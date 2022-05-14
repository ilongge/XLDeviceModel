//
//  UIDevice+XLDeviceModel.m
//  XLDeviceModel
//
//  Created by ilongge on 2022/5/13.
//

#import "UIDevice+XLDeviceModel.h"
#import "XLResourcesManager.h"
#import <sys/sysctl.h>

@implementation UIDevice (XLDeviceModel)

+ (NSString *)xl_currentDeviceModelDescription {
    int mib[2];
    size_t len;
    char *machine;
    
    mib[0] = CTL_HW;
    mib[1] = HW_MACHINE;
    sysctl(mib, 2, NULL, &len, NULL, 0);
    machine = malloc(len);
    sysctl(mib, 2, machine, &len, NULL, 0);
    
    NSString *platform = [NSString stringWithCString:machine
                                            encoding:NSASCIIStringEncoding];
    free(machine);
    return platform;
}

// 获取设备型号然后手动转化为对应名称
+ (NSString *)xl_currentDeviceModel {
    NSString *json_path = [[XLResourcesManager resourcesBundle] pathForResource:@"XLDeviceInfo" ofType:@"json"];
    NSData *json_data = [NSData dataWithContentsOfFile:json_path];
    NSError *error;
    NSDictionary *device_info_dict = [NSJSONSerialization JSONObjectWithData:json_data
                                                                     options:NSJSONReadingMutableLeaves
                                                                       error:&error];
    if (error) {
        NSLog(@"");
        return nil;
    }
    else{
        NSString *platform = [UIDevice xl_currentDeviceModelDescription];
        NSString *device_name = [device_info_dict objectForKey:platform];
        if (device_name == nil) {
            device_name = @"Unknow Device Model";
        }
        return device_name;
    }
}
@end
