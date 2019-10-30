#import <WebRTC/RTCAudioSessionConfiguration.h>

#import "WebRTCAudioSessionModule.h"

@implementation WebRTCAudioSessionModule

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setMode:(NSString*)mode)
{
  if ([mode isEqualToString:@"playback"]) {
    RTCAudioSessionConfiguration *webRTCConfig =
     [RTCAudioSessionConfiguration webRTCConfiguration];
    webRTCConfig.mode = AVAudioSessionModeMoviePlayback;
    webRTCConfig.category = AVAudioSessionCategoryPlayback;
    webRTCConfig.categoryOptions =  AVAudioSessionCategoryOptionDuckOthers;

    [RTCAudioSessionConfiguration setWebRTCConfiguration:webRTCConfig];
  }
}

@end
