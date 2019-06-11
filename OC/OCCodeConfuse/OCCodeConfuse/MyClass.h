//
//  MyClass.h
//  OCCodeConfuse
//
//  Created by uwei on 2019/5/27.
//  Copyright © 2019 TEG of Tencent. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

__attribute__((objc_runtime_name("MCD")))
@protocol MyClassDelegate <NSObject>

- (void)myMethod;

@end

__attribute__((objc_runtime_name("MC")))
@interface MyClass : NSObject<MyClassDelegate>

@end

NS_ASSUME_NONNULL_END
