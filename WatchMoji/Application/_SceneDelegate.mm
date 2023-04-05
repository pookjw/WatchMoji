//
//  _SceneDelegate.cpp
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#import "_SceneDelegate.hpp"
#import <objc/message.h>

_SceneDelegate::~_SceneDelegate() {
    [this->_window release];
}

id _Nullable _SceneDelegate::window() {
    return this->_window;
}

void _SceneDelegate::scene_willConnectToSession_options(id scene, id session, id connectionOptions) {
    id window = ((id (*)(id, SEL, id))objc_msgSend)([NSClassFromString(@"UIWindow") alloc], NSSelectorFromString(@"initWithWindowScene:"), scene);
    
    id rootViewController = [NSClassFromString(@"SPViewController") new];
    id rootView = ((id (*)(id, SEL))objc_msgSend)(rootViewController, NSSelectorFromString(@"view"));
    id systemPurpleColor = ((id (*)(Class, SEL))objc_msgSend)(NSClassFromString(@"UIColor"), NSSelectorFromString(@"systemPurpleColor"));
    ((void (*)(id, SEL, id))objc_msgSend)(rootView, NSSelectorFromString(@"setBackgroundColor:"), systemPurpleColor);
    
    ((void (*)(id, SEL, id))objc_msgSend)(window, NSSelectorFromString(@"setRootViewController:"), rootViewController);
    ((void (*)(id, SEL))objc_msgSend)(window, NSSelectorFromString(@"makeKeyAndVisible"));
    
    this->_window = [window retain];
    [window release];
}
