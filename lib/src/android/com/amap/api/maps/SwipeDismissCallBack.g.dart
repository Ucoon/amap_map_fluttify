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

class com_amap_api_maps_SwipeDismissCallBack extends java_lang_Object with com_amap_api_maps_SwipeDismissTouchListener_DismissCallbacks {
  //region constants
  static const String name__ = 'com.amap.api.maps.SwipeDismissCallBack';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_amap_api_maps_SwipeDismissCallBack> create__com_amap_api_maps_SwipeDismissView(com_amap_api_maps_SwipeDismissView var1) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_SwipeDismissCallBack__com_amap_api_maps_SwipeDismissView',
      {"var1": var1}
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_SwipeDismissCallBack>(__result__);
  }
  
  static Future<List<com_amap_api_maps_SwipeDismissCallBack>> create_batch__com_amap_api_maps_SwipeDismissView(List<com_amap_api_maps_SwipeDismissView> var1) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_SwipeDismissCallBack__com_amap_api_maps_SwipeDismissView',
      [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__]}]
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_SwipeDismissCallBack>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_maps_SwipeDismissCallBack{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_SwipeDismissCallBack_Batch on List<com_amap_api_maps_SwipeDismissCallBack> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}