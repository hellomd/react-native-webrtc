package com.oney.WebRTCModule;

import android.content.Context;
import android.media.AudioManager;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.module.annotations.ReactModule;

@ReactModule(name = "WebRTCAudioSessionModule")
public class WebRTCAudioSessionModule extends ReactContextBaseJavaModule {
    private AudioManager audioManager;

    public WebRTCAudioSessionModule(ReactApplicationContext context) {
        super(context);

        this.audioManager = ((AudioManager) context.getSystemService(Context.AUDIO_SERVICE));
    }

    @Override
    public String getName() {
        return "WebRTCAudioSessionModule";
    }

    @ReactMethod
    public void setMode(String mode) {
    }

    @ReactMethod
    public void setLoudspeakerOn() {
        this.audioManager.setMode(AudioManager.MODE_IN_COMMUNICATION);

        if (!audioManager.isSpeakerphoneOn())  {
            this.audioManager.setSpeakerphoneOn(true);
        }
    }
}
