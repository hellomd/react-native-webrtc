"use strict";

import EventTarget from "event-target-shim";
import { NativeModules } from "react-native";

const { WebRTCAudioSessionModule } = NativeModules;

export default class RTCAudioSession {
  static MODE = {
    CHAT: "chat",
    PLAYBACK: "playback"
  };

  static setMode(mode) {
    WebRTCAudioSessionModule.setMode(mode);
  }

  static setLoudspeakerOn() {
    WebRTCAudioSessionModule.setLoudspeakerOn();
  }
}
