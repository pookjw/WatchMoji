//
//  BaseViewController.mm
//  WatchMoji
//
//  Created by Jinwoo Kim on 4/6/23.
//

#import "BaseViewController.hpp"
#import <objc/message.h>

OBJC_EXPORT id objc_msgSendSuper2(void);

Class BaseViewController::representedClass() {
    static Class _Nullable representedClass;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        representedClass = objc_allocateClassPair(NSClassFromString(@"SPViewController"), "BaseViewController", 0);
    });
    
    return representedClass;
}

void BaseViewController::viewDidLoad() {
    
}
