//
//  _SceneDelegate.hpp
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#ifndef _SceneDelegate_hpp
#define _SceneDelegate_hpp

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

class _SceneDelegate {
public:
    ~_SceneDelegate();
    id _Nullable window();
    void scene_willConnectToSession_options(id scene, id session, id connectionOptions);
private:
    id _Nullable _window;
};

NS_ASSUME_NONNULL_END

#endif /* _SceneDelegate_hpp */
