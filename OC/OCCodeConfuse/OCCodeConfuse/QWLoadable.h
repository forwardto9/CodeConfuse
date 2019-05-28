//
//  QWLoadable.h
//  OCDemo
//
//  Created by uwei on 2019/5/21.
//  Copyright © 2019 TEG of Tencent. All rights reserved.
//

#ifndef QWLoadable_h
#define QWLoadable_h


#define QWLoadableSegmentName "__DATA"
#define QWLoadableSectionName "QWLoadable"

#define QWLoadable __attribute((used, section(QWLoadableSegmentName "," QWLoadableSectionName )))

typedef int (*QWLoadableFunctionCallback)(const char *);
typedef void (*QWLoadableFunctionTemplate)(QWLoadableFunctionCallback);

#define QWLoadableFunctionBegin(functionName) \
static void QWLoadable##functionName(QWLoadableFunctionCallback QWLoadableCallback){ \
if(0 != QWLoadableCallback(#functionName)) return;

#define QWLoadableFunctionEnd(functionName) \
} \
static QWLoadableFunctionTemplate varQWLoadable##functionName QWLoadable = QWLoadable##functionName;

#endif /* QWLoadable_h */
