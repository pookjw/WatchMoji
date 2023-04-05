//
//  SceneDelegate.mm
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#import "SceneDelegate.hpp"
#import <objc/runtime.h>
#import <memory>
#import "_SceneDelegate.hpp"

@interface SceneDelegate ()
@property (assign, nonatomic) std::shared_ptr<_SceneDelegate> managedObject;
@end

@implementation SceneDelegate

+ (void)load {
    class_addProtocol(self, NSProtocolFromString(@"UISceneDelegate"));
}

- (instancetype)init {
    if (self = [super init]) {
        self.managedObject = std::shared_ptr<_SceneDelegate>(new _SceneDelegate);
    }
    
    return self;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)connectionOptions {
    self.managedObject->scene_willConnectToSession_options(scene, session, connectionOptions);
}

@end
