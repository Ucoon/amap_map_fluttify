// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////
import 'dart:typed_data';

import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

class com_amap_api_maps_utils_PathSmoothTool extends java_lang_Object {
  static const String name__ = 'com.amap.api.maps.utils.PathSmoothTool';

  @override
  final String tag__ = 'amap_map_fluttify';

  static Future<com_amap_api_maps_utils_PathSmoothTool> create__() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
        'ObjectFactory::createcom_amap_api_maps_utils_PathSmoothTool__');
    return com_amap_api_maps_utils_PathSmoothTool()..refId = __result__.refId;
  }

  Future<void> setIntensity(int mIntensity) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::setIntensity',
      {"mIntensity": mIntensity, "__this__": this},
    );
  }

  Future<void> setThreshhold(double mThreshhold) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::setThreshhold',
      {"mThreshhold": mThreshhold, "__this__": this},
    );
  }

  Future<void> setNoiseThreshhold(double mnoiseThreshhold) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::setNoiseThreshhold',
      {"mnoiseThreshhold": mnoiseThreshhold, "__this__": this},
    );
  }

  Future<List<com_amap_api_maps_model_LatLng>> pathOptimize(
    List<com_amap_api_maps_model_LatLng> originlist,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeListMethod(
      'com.amap.api.maps.utils.PathSmoothTool::pathOptimize',
      {"originlist": originlist, "__this__": this},
    );

    return __result__
        .map((e) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_LatLng>(e))
        .toList();
  }

  Future<List<com_amap_api_maps_model_LatLng>>
      kalmanFilterPath__List_com_amap_api_maps_model_LatLng_(
    List<com_amap_api_maps_model_LatLng> originlist,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::kalmanFilterPath__List_com_amap_api_maps_model_LatLng_',
      {"originlist": originlist, "__this__": this},
    );

    return __result__
        .map((e) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_LatLng>(e))
        .toList();
  }

  Future<List<com_amap_api_maps_model_LatLng>> removeNoisePoint(
    List<com_amap_api_maps_model_LatLng> originlist,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::removeNoisePoint',
      {"originlist": originlist, "__this__": this},
    );

    return __result__
        .map((e) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_LatLng>(e))
        .toList();
  }

  Future<com_amap_api_maps_model_LatLng>
      kalmanFilterPoint__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
    com_amap_api_maps_model_LatLng lastLoc,
    com_amap_api_maps_model_LatLng curLoc,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::kalmanFilterPoint__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng',
      {"lastLoc": lastLoc, "curLoc": curLoc, "__this__": this},
    );
    return AmapMapFluttifyAndroidAs(__result__);
  }

  Future<List<com_amap_api_maps_model_LatLng>>
      reducerVerticalThreshold__List_com_amap_api_maps_model_LatLng_(
    List<com_amap_api_maps_model_LatLng> inPoints,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'com.amap.api.maps.utils.PathSmoothTool::reducerVerticalThreshold__List_com_amap_api_maps_model_LatLng_',
      {"inPoints": inPoints, "__this__": this},
    );
    return __result__
        .map((e) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_LatLng>(e))
        .toList();
  }
}
