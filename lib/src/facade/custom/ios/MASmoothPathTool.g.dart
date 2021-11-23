// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////
import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'MALonLatPoint.g.dart';

class MASmoothPathTool extends NSObject {
  static const String name__ = 'MASmoothPathTool';

  @override
  final String tag__ = 'amap_map_fluttify';

  static Future<MASmoothPathTool> create__({bool init = true}) async {
    final __result__ = await kAmapMapFluttifyChannel
        .invokeMethod('ObjectFactory::createMASmoothPathTool', {'init': init});
    return MASmoothPathTool()..refId = __result__.refId;
  }

  static Future<List<MASmoothPathTool>> create_batch__(int length,
      {bool init = true}) async {
    final List resultBatch = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::create_batchMASmoothPathTool',
      {'length': length, 'init': init},
    );
    return resultBatch.map((e) => MASmoothPathTool()..refId = e.refId).toList();
  }

  Future<int> get_intensity() async {
    return kAmapMapFluttifyChannel
        .invokeMethod("MASmoothPathTool::get_intensity", {'__this__': this});
  }

  Future<double> get_threshHold() async {
    return kAmapMapFluttifyChannel
        .invokeMethod("MASmoothPathTool::get_threshHold", {'__this__': this});
  }

  Future<int> get_noiseThreshhold() async {
    return kAmapMapFluttifyChannel.invokeMethod(
        "MASmoothPathTool::get_noiseThreshhold", {'__this__': this});
  }

  Future<void> set_intensity(int intensity) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::set_intensity',
      <String, dynamic>{'__this__': this, "intensity": intensity},
    );
  }

  Future<void> set_threshHold(double threshHold) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::set_threshHold',
      <String, dynamic>{'__this__': this, "threshHold": threshHold},
    );
  }

  Future<void> set_noiseThreshhold(int noiseThreshhold) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::set_noiseThreshhold',
      <String, dynamic>{'__this__': this, "noiseThreshhold": noiseThreshhold},
    );
  }

  Future<List<MALonLatPoint>> pathOptimize(
    List<MALonLatPoint> originlist,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::pathOptimize',
      {"originlist": originlist, "__this__": this},
    );
    return (__result__ as List)
        .map((e) => MALonLatPoint()..refId = e.refId)
        .toList();
  }

  Future<List<MALonLatPoint>> kalmanFilterPath(
    List<MALonLatPoint> originlist,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::kalmanFilterPath',
      {"originlist": originlist, "__this__": this},
    );

    return (__result__ as List)
        .map((e) => MALonLatPoint()..refId = e.refId)
        .toList();
  }

  Future<List<MALonLatPoint>> removeNoisePoint(
      List<MALonLatPoint> originlist) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::removeNoisePoint',
      {"originlist": originlist, "__this__": this},
    );

    return (__result__ as List)
        .map((e) => MALonLatPoint()..refId = e.refId)
        .toList();
  }

  Future<MALonLatPoint> kalmanFilterPoint_curLoc(
    MALonLatPoint lastLoc,
    MALonLatPoint curLoc,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::kalmanFilterPoint_curLoc',
      {"lastLoc": lastLoc, "curLoc": curLoc, "__this__": this},
    );
    return MALonLatPoint()..refId = __result__.refId;
  }

  Future<List<MALonLatPoint>> reducerVerticalThreshold(
    List<MALonLatPoint> inPoints,
  ) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::reducerVerticalThreshold',
      {"inPoints": inPoints, "__this__": this},
    );
    return (__result__ as List)
        .map((e) => MALonLatPoint()..refId = e.refId)
        .toList();
  }
}

extension MASmoothPathTool_Batch on List<MASmoothPathTool> {
  Future<List<int>> get_intensity_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod(
      "MASmoothPathTool::get_intensity_batch",
      [
        for (final __item__ in this) {'__this__': __item__}
      ],
    );
    return (resultBatch as List).cast<int>();
  }

  Future<List<double>> get_threshHold_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod(
      "MASmoothPathTool::get_threshHold_batch",
      [
        for (final __item__ in this) {'__this__': __item__}
      ],
    );
    return (resultBatch as List).cast<double>();
  }

  Future<List<int>> get_noiseThreshhold_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod(
      "MASmoothPathTool::get_noiseThreshhold_batch",
      [
        for (final __item__ in this) {'__this__': __item__}
      ],
    );
    return (resultBatch as List).cast<int>();
  }

  Future<void> set_intensity_batch(List<int> intensity) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::set_intensity_batch',
      [
        for (int __i__ = 0; __i__ < this.length; __i__++)
          {'__this__': this[__i__], "intensity": intensity[__i__]}
      ],
    );
  }

  Future<void> set_threshHold_batch(List<double> threshHold) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::set_threshHold_batch',
      [
        for (int __i__ = 0; __i__ < this.length; __i__++)
          {'__this__': this[__i__], "threshHold": threshHold[__i__]}
      ],
    );
  }

  Future<void> set_noiseThreshhold_batch(List<int> noiseThreshhold) async {
    await kAmapMapFluttifyChannel.invokeMethod(
      'MASmoothPathTool::set_noiseThreshhold_batch',
      [
        for (int __i__ = 0; __i__ < this.length; __i__++)
          {'__this__': this[__i__], "noiseThreshhold": noiseThreshhold[__i__]}
      ],
    );
  }
}