//
//  UIDevice+XLDeviceModel.h
//  XLDeviceModel
//
//  Created by ilongge on 2022/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (XLDeviceModel)
/*
 获取设备描述
 */
+ (NSString *)xl_currentDeviceModelDescription;
/*
 由获取到的设备描述，来匹配设备型号
 */
+ (NSString *)xl_currentDeviceModel;
@end

NS_ASSUME_NONNULL_END
