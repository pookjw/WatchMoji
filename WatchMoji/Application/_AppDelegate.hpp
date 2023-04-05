//
//  _AppDelegate.hpp
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#ifndef _AppDelegate_hpp
#define _AppDelegate_hpp

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

class _AppDelegate {
public:
    id _Nullable window();
    
    BOOL application_didFinishLaunchingWithOptions(id application, NSDictionary *launchOptions);
    id application_configurationForConnectingSceneSession_options(id application, id connectingSceneSession, id options);
    void didReceiveNonClockKitEvent();
    id extendLaunchTest();
    void applicationWillSuspend(id arg0);
protected:
    id _Nullable _window;
};

NS_ASSUME_NONNULL_END

#endif /* _AppDelegate_hpp */
