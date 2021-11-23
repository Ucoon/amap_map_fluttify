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

class com_amap_api_maps_model_AMapPara extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.amap.api.maps.model.AMapPara';

  @override
  final String tag__ = 'amap_map_fluttify';

  static final int DOTTEDLINE_TYPE_DEFAULT = -1;
  static final int DOTTEDLINE_TYPE_SQUARE = 0;
  static final int DOTTEDLINE_TYPE_CIRCLE = 1;
  //endregion

  //region creators
  static Future<com_amap_api_maps_model_AMapPara> create__() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_model_AMapPara__',
    
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_AMapPara>(__result__);
  }
  
  static Future<List<com_amap_api_maps_model_AMapPara>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_model_AMapPara__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_AMapPara>(it))
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
    return 'com_amap_api_maps_model_AMapPara{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_model_AMapPara_Batch on List<com_amap_api_maps_model_AMapPara> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}