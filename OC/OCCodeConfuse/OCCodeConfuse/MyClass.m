//
//  MyClass.m
//  OCCodeConfuse
//
//  Created by uwei on 2019/5/27.
//  Copyright © 2019 TEG of Tencent. All rights reserved.
//

#import "MyClass.h"
#import "QWLoadable.h"

@implementation MyClass

+ (void)userDefinedLoad {}

@end
QWLoadableFunctionBegin(Student)
[MyClass userDefinedLoad];
QWLoadableFunctionEnd(Student)
