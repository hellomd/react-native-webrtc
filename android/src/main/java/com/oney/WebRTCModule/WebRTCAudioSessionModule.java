package com.oney.WebRTCModule;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

@ReactModule(name = "WebRTCAudioSessionModule")
public class WebRTCAudioSessionModule extends ReactContextBaseJavaModule {
    public WebRTCAudioSessionModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "WebRTCAudioSessionModule";
    }

    @ReactMethod
    public void setMode(String mode) {
    }
}
