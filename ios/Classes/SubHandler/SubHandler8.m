//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

#import "SubHandler8.h"
#import "FluttifyMessageCodec.h"
#import <MAMapKit/MAMapKit.h>

// Dart端一次方法调用所存在的栈, 只有当MethodChannel传递参数受限时, 再启用这个容器
extern NSMutableDictionary<NSString*, NSObject*>* STACK;
// Dart端随机存取对象的容器
extern NSMutableDictionary<NSString*, NSObject*>* HEAP;
// 日志打印开关
extern BOOL enableLog;

@implementation AmapMapFluttifyPlugin (SubHandler8)
- (NSDictionary<NSString*, Handler>*) getSubHandler8 {
    __weak __typeof(self)weakSelf = self;
    return @{
        @"MAPathShowRangeMake::MAPathShowRangeMake": ^(NSObject <FlutterPluginRegistrar> * registrar, id args, FlutterResult methodResult) {
            if (enableLog) {
                NSLog(@"fluttify-objc: MAPathShowRangeMake::MAPathShowRangeMake(%@)", args);
            }
        
            // args
            // jsonable arg
            float begin = [args[@"begin"] floatValue];
            // jsonable arg
            float end = [args[@"end"] floatValue];
        
            // ref
        
        
            // invoke native method
            MAPathShowRange result = MAPathShowRangeMake(begin, end);
        
            // result
            // 返回值: 结构体
            NSValue* __result__ = [NSValue value:&result withObjCType:@encode(MAPathShowRange)];
        
            methodResult(__result__);
        },
    };
}

@end
