//
//  BaseViewController.hpp
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#ifndef BaseViewController_hpp
#define BaseViewController_hpp

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

class BaseViewController {
public:
    static Class representedClass();
protected:
    void viewDidLoad();
};

NS_ASSUME_NONNULL_END

#endif /* BaseViewController_hpp */
