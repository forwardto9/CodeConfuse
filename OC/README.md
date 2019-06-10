# OC CodeConfuse

## 方法名混淆

1. 在工程文件(.xcodeproj)同级目录下创建confuse.sh 和 func.list文件

   confuse.sh 根据func.list文件中列举的字符串，一一对应地在创建的codeObfuscation.h文件中生成宏替换，工程下会多出一个symbols文件，其是sqlite文件，保存了符号混淆前后的对应关系

2. 在 `Build Phases` 中添加 `New Run Script`

   上述脚本路径：`$PROJECT_DIR/confuse.sh`

3. 创建PCH文件，将其添加到工程文件中，并添加上述脚本自动创建的头文件`codefuscation.h`

   > 在脚本未执行之前，`codefuscation.h` 文件是没有生成的，需要先注释掉

4. 编辑func.list ，指定需要混淆的方法名字

   ```
   testMethod:withParam1:andParam2 对应的混淆写法：
   testMethod
   withParam1
   andParam2
   ```

   

   > 单段的selector，如`func:` ，可以通过#define func 来实现字符串替换
   > 多段的selector，如`a:b:c`: ，可以通过#define a 、#defineb、#definec 来实现字符串替换

   

5. ...



## 类和接口名混淆

使用编译器特性进行类名和接口名的二次指定，可用于混淆

```objective-c
__attribute__((objc_runtime_name("VC1")))
@interface ViewController : UIViewController
```

https://github.com/renpan1990/VPCodeObfuscation/tree/master/VPCodeObfuscationDemo/VPCodeObfuscationFiles

