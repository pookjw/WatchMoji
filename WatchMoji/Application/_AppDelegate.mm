//
//  _AppDelegate.mm
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#import "_AppDelegate.hpp"
#import <iostream>
#import <objc/message.h>
#import "SceneDelegate.hpp"

BOOL _AppDelegate::application_didFinishLaunchingWithOptions(id application, NSDictionary *launchOptions) {
    return YES;
}

id _AppDelegate::application_configurationForConnectingSceneSession_options(id  _Nonnull application, id  _Nonnull connectingSceneSession, id  _Nonnull options) {
    id configuration = ((id (*)(id, SEL))objc_msgSend)(connectingSceneSession, NSSelectorFromString(@"configuration"));
    
    ((void (*)(id, SEL, Class _Nullable))objc_msgSend)(configuration, NSSelectorFromString(@"setDelegateClass:"), SceneDelegate.class);
    
    return configuration;
}

void _AppDelegate::didReceiveNonClockKitEvent() {
    
}

id _AppDelegate::extendLaunchTest() {
    return nullptr;
}

void _AppDelegate::applicationWillSuspend(id arg0) {
    
}
