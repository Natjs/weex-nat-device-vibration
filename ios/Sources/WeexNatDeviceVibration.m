//
//  WeexNatDeviceVibration.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//


#import "WeexNatDeviceVibration.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatVibration/NatVibration.h>

@implementation WeexNatDeviceVibration
@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(nat/device/vibration, WeexNatDeviceVibration)
WX_EXPORT_METHOD(@selector(vibrate::))

- (void)vibrate:(NSNumber *)time :(WXModuleCallback)callback{
    [[NatVibration singletonManger] vibrate:time :^(id error, id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

@end
