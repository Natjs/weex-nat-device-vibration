//
//  NatWeexVibration.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>


@protocol NatWeexVibrationPro <WXModuleProtocol>

- (void)vibrate:(NSNumber *)time :(WXModuleCallback)callback;

@end

@interface NatWeexVibration : NSObject<NatWeexVibrationPro>

@end
