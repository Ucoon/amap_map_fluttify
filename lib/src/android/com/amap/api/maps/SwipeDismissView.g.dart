// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_amap_api_maps_SwipeDismissView extends android_widget_RelativeLayout  {
  //region constants
  static const String name__ = 'com.amap.api.maps.SwipeDismissView';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_amap_api_maps_SwipeDismissView> create__android_content_Context__android_view_View(android_content_Context var1, android_view_View var2) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_SwipeDismissView__android_content_Context__android_view_View',
      {"var1": var1, "var2": var2}
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_SwipeDismissView>(__result__);
  }
  
  static Future<List<com_amap_api_maps_SwipeDismissView>> create_batch__android_content_Context__android_view_View(List<android_content_Context> var1, List<android_view_View> var2) async {
    assert(var1.length == var2.length);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_SwipeDismissView__android_content_Context__android_view_View',
      [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__], "var2": var2[__i__]}]
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_SwipeDismissView>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<void> setCallback(com_amap_api_maps_WearMapView_OnDismissCallback var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.SwipeDismissView@$refId::setCallback([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.SwipeDismissView::setCallback', {"var1": var1, "__this__": this});
  
  
    // handle native call
    MethodChannel('com.amap.api.maps.SwipeDismissView::setCallback::Callback@$refId', kAmapMapFluttifyMethodCodec)
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::com.amap.api.maps.WearMapView.OnDismissCallback::onDismiss':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onDismiss([])');
                }
          
                // handle the native call
                await var1?.onDismiss();
                break;
              case 'Callback::com.amap.api.maps.WearMapView.OnDismissCallback::onNotifySwipe':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onNotifySwipe([])');
                }
          
                // handle the native call
                await var1?.onNotifySwipe();
                break;
              default:
                throw MissingPluginException('方法${methodCall.method}未实现');
                break;
            }
          } catch (e) {
            debugPrint(e);
            rethrow;
          }
        });
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_maps_SwipeDismissView{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_SwipeDismissView_Batch on List<com_amap_api_maps_SwipeDismissView> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}