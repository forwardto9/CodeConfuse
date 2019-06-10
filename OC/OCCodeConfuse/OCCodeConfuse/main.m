//
//  main.m
//  OCCodeConfuse
//
//  Created by uwei on 2019/5/27.
//  Copyright © 2019 TEG of Tencent. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int baud_table[5] = {9600, 19200, 38400, 57600, 115200};
const int testconst[] = {123, 123};

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
