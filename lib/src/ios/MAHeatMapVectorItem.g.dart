// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class MAHeatMapVectorItem extends NSObject  {
  //region constants
  static const String name__ = 'MAHeatMapVectorItem';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<MAHeatMapVectorItem> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createMAHeatMapVectorItem',
      {'init': init}
    );
    return AmapMapFluttifyIOSAs<MAHeatMapVectorItem>(__result__);
  }
  
  static Future<List<MAHeatMapVectorItem>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchMAHeatMapVectorItem',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyIOSAs<MAHeatMapVectorItem>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<MAMapPoint> get_center() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAHeatMapVectorItem::get_center", {'__this__': this});
    return AmapMapFluttifyIOSAs<MAMapPoint>(__result__);
  }
  
  Future<double> get_intensity() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAHeatMapVectorItem::get_intensity", {'__this__': this});
    return __result__;
  }
  
  Future<List<num>> get_nodeIndices() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAHeatMapVectorItem::get_nodeIndices", {'__this__': this});
    return (__result__ as List)?.cast<num>();
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion

  @override
  String toString() {
    return 'MAHeatMapVectorItem{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension MAHeatMapVectorItem_Batch on List<MAHeatMapVectorItem> {
  //region getters
  Future<List<MAMapPoint>> get_center_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAHeatMapVectorItem::get_center_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => AmapMapFluttifyIOSAs<MAMapPoint>(__result__))?.cast<MAMapPoint>()?.toList();
  }
  
  Future<List<double>> get_intensity_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAHeatMapVectorItem::get_intensity_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<List<num>>> get_nodeIndices_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAHeatMapVectorItem::get_nodeIndices_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as List)?.cast<num>())?.cast<List<num>>()?.toList();
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}