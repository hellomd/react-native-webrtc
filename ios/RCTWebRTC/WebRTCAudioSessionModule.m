#import <WebRTC/RTCAudioSessionConfiguration.h>

#import "WebRTCAudioSessionModule.h"

static NSString *const MODE_CHAT = @"chat";
static NSString *const MODE_PLAYBACK = @"playback";

@implementation WebRTCAudioSessionModule

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setMode:(NSString*)mode)
{
  if ([mode isEqualToString:MODE_PLAYBACK]) {
    RTCAudioSessionConfiguration *webRTCConfig =
     [RTCAudioSessionConfiguration webRTCConfiguration];
    webRTCConfig.mode = AVAudioSessionModeMoviePlayback;
    webRTCConfig.category = AVAudioSessionCategoryPlayback;
    webRTCConfig.categoryOptions =  AVAudioSessionCategoryOptionDuckOthers;

    [RTCAudioSessionConfiguration setWebRTCConfiguration:webRTCConfig];
  }
}

RCT_EXPORT_METHOD(setLoudspeakerOn)
{
  AVAudioSession *_audioSession = [AVAudioSession sharedInstance];

  @try {
    [_audioSession setPreferredOutputNumberOfChannels:0 error:nil];
    [_audioSession overrideOutputAudioPort:[AVAudioSessionPortBuiltInSpeaker intValue] error:nil];
    [_audioSession setActive:YES error:nil];
  } @catch (NSException *e) {
    NSLog(@"Error on setLoudspeakerOn: %@", e.reason);
  }
}

@end
