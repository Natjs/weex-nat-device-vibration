package com.nat.weex;

import com.nat.device_vibration.HLModuleResultListener;
import com.nat.device_vibration.HLVibrationModule;
import com.taobao.weex.annotation.JSMethod;
import com.taobao.weex.bridge.JSCallback;
import com.taobao.weex.common.WXModule;

/**
 * Created by Daniel on 17/2/17.
 * Copyright (c) 2017 Nat. All rights reserved.
 */

public class DeviceVibrationModule extends WXModule{

    @JSMethod
    public void vibrate(int time, final JSCallback jsCallback){
        HLVibrationModule.getInstance(mWXSDKInstance.getContext()).vibrate(time, new HLModuleResultListener() {
            @Override
            public void onResult(Object o) {
                jsCallback.invoke(o);
            }
        });
    }
}
