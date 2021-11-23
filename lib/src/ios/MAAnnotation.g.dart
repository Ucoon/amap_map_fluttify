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

class _MAAnnotation_SUB extends NSObject with MAAnnotation {}

mixin MAAnnotation on NSObject {
  

  static MAAnnotation subInstance() => _MAAnnotation_SUB();

  @override
  final String tag__ = 'amap_map_fluttify';

  Future<CLLocationCoordinate2D> get_coordinate() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAAnnotation::get_coordinate", {'__this__': this});
    return AmapMapFluttifyIOSAs<CLLocationCoordinate2D>(__result__);
  }
  
  Future<String> get_title() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAAnnotation::get_title", {'__this__': this});
    return __result__;
  }
  
  Future<String> get_subtitle() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAAnnotation::get_subtitle", {'__this__': this});
    return __result__;
  }
  

  Future<void> set_title(String title) async {
    await kAmapMapFluttifyChannel.invokeMethod('MAAnnotation::set_title', <String, dynamic>{'__this__': this, "title": title});
  
  
  }
  
  Future<void> set_subtitle(String subtitle) async {
    await kAmapMapFluttifyChannel.invokeMethod('MAAnnotation::set_subtitle', <String, dynamic>{'__this__': this, "subtitle": subtitle});
  
  
  }
  

  
  Future<void> setCoordinate(CLLocationCoordinate2D newCoordinate) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAAnnotation@$refId::setCoordinate([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAAnnotation::setCoordinate', {"newCoordinate": newCoordinate, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
}

extension MAAnnotation_Batch on List<MAAnnotation> {
  //region methods
  
  Future<List<void>> setCoordinate_batch(List<CLLocationCoordinate2D> newCoordinate) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAAnnotation::setCoordinate_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"newCoordinate": newCoordinate[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}