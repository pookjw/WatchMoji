//
//  AppDelegate.mm
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#import "AppDelegate.hpp"
#import "_AppDelegate.hpp"
#import <memory>

@interface AppDelegate ()
@property (assign, nonatomic) std::shared_ptr<_AppDelegate> managedObject;
@end

@implementation AppDelegate

- (instancetype)init {
    if (self = [super init]) {
        self.managedObject = std::shared_ptr<_AppDelegate>(new _AppDelegate);
    }
    
    return self;
}

- (id)window {
    return nil;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return self.managedObject->application_didFinishLaunchingWithOptions(application, launchOptions);
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)connectingSceneSession options:(id)options {
    return self.managedObject->application_configurationForConnectingSceneSession_options(application, connectingSceneSession, options);
}

- (void)didReceiveNonClockKitEvent {
    self.managedObject->didReceiveNonClockKitEvent();
}

- (id)extendLaunchTest {
    return self.managedObject->extendLaunchTest();
}

- (void)applicationWillSuspend:(id)arg0 {
    self.managedObject->applicationWillSuspend(arg0);
}

@end
