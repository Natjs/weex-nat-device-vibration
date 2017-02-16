//
//  NatWeexVibration.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//


#import "NatWeexVibration.h"
#import "NatVibration.h"

@implementation NatWeexVibration
WX_EXPORT_METHOD(@selector(vibrate::))

- (void)vibrate:(NSNumber *)time :(WXModuleCallback)callback{
    [[NatVibration singletonManger] vibrate:time :^(id error, id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        }else{
            if (callback) {
                callback(result);
            }
        }
        
    }];
}

@end
