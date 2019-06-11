//
//  ViewController.m
//  OCCodeConfuse
//
//  Created by uwei on 2019/5/27.
//  Copyright © 2019 TEG of Tencent. All rights reserved.
//

//#define Log(x) NSLog(x)
#define Log(x) nil // 如果是nil，这少了符号和函数的调用，即Log符号是空的，且Log中的常量也不会被编译进可执行文件

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Log(@"thisq");
}

- (void)testMethod:(NSString *)name withParam1:(int )x andParam2:(id)y {
    
}

@end
