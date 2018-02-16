//
//  WeexNatDeviceVibration.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>

@protocol WeexNatDeviceVibrationPro <WXModuleProtocol>

- (void)vibrate:(NSNumber *)time :(WXModuleCallback)callback;

@end

@interface WeexNatDeviceVibration : NSObject<WeexNatDeviceVibrationPro>
@end
