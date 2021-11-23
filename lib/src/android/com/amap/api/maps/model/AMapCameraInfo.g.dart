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

class com_amap_api_maps_model_AMapCameraInfo extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.amap.api.maps.model.AMapCameraInfo';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_amap_api_maps_model_AMapCameraInfo> create__float__float__float__float__float__float(double var1, double var2, double var3, double var4, double var5, double var6) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_model_AMapCameraInfo__float__float__float__float__float__float',
      {"var1": var1, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "var6": var6}
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_AMapCameraInfo>(__result__);
  }
  
  static Future<List<com_amap_api_maps_model_AMapCameraInfo>> create_batch__float__float__float__float__float__float(List<double> var1, List<double> var2, List<double> var3, List<double> var4, List<double> var5, List<double> var6) async {
    assert(var1.length == var2.length && var2.length == var3.length && var3.length == var4.length && var4.length == var5.length && var5.length == var6.length);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_model_AMapCameraInfo__float__float__float__float__float__float',
      [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__], "var2": var2[__i__], "var3": var3[__i__], "var4": var4[__i__], "var5": var5[__i__], "var6": var6[__i__]}]
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_AMapCameraInfo>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<double> getFov() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getFov([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getFov', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<double> getAspectRatio() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getAspectRatio([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getAspectRatio', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<double> getRotate() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getRotate([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getRotate', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<double> getX() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getX([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getX', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<double> getY() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getY([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getY', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<double> getZ() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.AMapCameraInfo@$refId::getZ([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getZ', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_maps_model_AMapCameraInfo{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_model_AMapCameraInfo_Batch on List<com_amap_api_maps_model_AMapCameraInfo> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<double>> getFov_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getFov_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<double>> getAspectRatio_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getAspectRatio_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<double>> getRotate_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getRotate_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<double>> getX_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getX_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<double>> getY_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getY_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<double>> getZ_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.AMapCameraInfo::getZ_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  //endregion
}