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

class MAOverlayRenderer extends NSObject  {
  //region constants
  static const String name__ = 'MAOverlayRenderer';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<MAOverlayRenderer> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createMAOverlayRenderer',
      {'init': init}
    );
    return AmapMapFluttifyIOSAs<MAOverlayRenderer>(__result__);
  }
  
  static Future<List<MAOverlayRenderer>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchMAOverlayRenderer',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyIOSAs<MAOverlayRenderer>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<MAOverlay> get_overlay() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_overlay", {'__this__': this});
    return AmapMapFluttifyIOSAs<MAOverlay>(__result__);
  }
  
  Future<UIImage> get_strokeImage() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_strokeImage", {'__this__': this});
    return AmapMapFluttifyIOSAs<UIImage>(__result__);
  }
  
  Future<int> get_strokeTextureID() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_strokeTextureID", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_alpha() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_alpha", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_contentScale() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_contentScale", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_strokeImage(UIImage strokeImage) async {
    await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::set_strokeImage', <String, dynamic>{'__this__': this, "strokeImage": strokeImage});
  
  
  }
  
  Future<void> set_alpha(double alpha) async {
    await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::set_alpha', <String, dynamic>{'__this__': this, "alpha": alpha});
  
  
  }
  
  //endregion

  //region methods
  
  Future<MAOverlayRenderer> initWithOverlay(MAOverlay overlay) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::initWithOverlay([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::initWithOverlay', {"overlay": overlay, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyIOSAs<MAOverlayRenderer>(__result__);
  }
  
  
  Future<NSValue/* float* */> getViewMatrix() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::getViewMatrix([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getViewMatrix', {"__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyIOSAs<NSValue/* float* */>(__result__);
  }
  
  
  Future<NSValue/* float* */> getProjectionMatrix() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::getProjectionMatrix([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getProjectionMatrix', {"__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyIOSAs<NSValue/* float* */>(__result__);
  }
  
  
  Future<MAMapPoint> getOffsetPoint() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::getOffsetPoint([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getOffsetPoint', {"__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyIOSAs<MAMapPoint>(__result__);
  }
  
  
  Future<double> getMapZoomLevel() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::getMapZoomLevel([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getMapZoomLevel', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<CGPoint> glPointForMapPoint(MAMapPoint mapPoint) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::glPointForMapPoint([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::glPointForMapPoint', {"mapPoint": mapPoint, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyIOSAs<CGPoint>(__result__);
  }
  
  
  Future<List<CGPoint>> glPointsForMapPoints_count(List<MAMapPoint> mapPoints, int count) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::glPointsForMapPoints([\'count\':$count])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::glPointsForMapPoints_count', {"mapPoints": mapPoints, "count": count, "__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => AmapMapFluttifyIOSAs<CGPoint>(it))?.toList();
  }
  
  
  Future<double> glWidthForWindowWidth(double windowWidth) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::glWidthForWindowWidth([\'windowWidth\':$windowWidth])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::glWidthForWindowWidth', {"windowWidth": windowWidth, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  @deprecated
  Future<void> renderLinesWithPoints_pointCount_strokeColor_lineWidth_looped(List<CGPoint> points, int pointCount, UIColor strokeColor, double lineWidth, bool looped) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAOverlayRenderer@$refId::renderLinesWithPoints([\'pointCount\':$pointCount, \'lineWidth\':$lineWidth, \'looped\':$looped])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::renderLinesWithPoints_pointCount_strokeColor_lineWidth_looped', {"points": points, "pointCount": pointCount, "strokeColor": strokeColor, "lineWidth": lineWidth, "looped": looped, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'MAOverlayRenderer{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension MAOverlayRenderer_Batch on List<MAOverlayRenderer> {
  //region getters
  Future<List<MAOverlay>> get_overlay_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_overlay_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => AmapMapFluttifyIOSAs<MAOverlay>(__result__))?.cast<MAOverlay>()?.toList();
  }
  
  Future<List<UIImage>> get_strokeImage_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_strokeImage_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => AmapMapFluttifyIOSAs<UIImage>(__result__))?.cast<UIImage>()?.toList();
  }
  
  Future<List<int>> get_strokeTextureID_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_strokeTextureID_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<double>> get_alpha_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_alpha_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<double>> get_contentScale_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("MAOverlayRenderer::get_contentScale_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_strokeImage_batch(List<UIImage> strokeImage) async {
    await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::set_strokeImage_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "strokeImage": strokeImage[__i__]}]);
  
  
  }
  
  Future<void> set_alpha_batch(List<double> alpha) async {
    await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::set_alpha_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "alpha": alpha[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  Future<List<MAOverlayRenderer>> initWithOverlay_batch(List<MAOverlay> overlay) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::initWithOverlay_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"overlay": overlay[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyIOSAs<MAOverlayRenderer>(__result__)).cast<MAOverlayRenderer>().toList();
  }
  
  
  Future<List<NSValue/* float* */>> getViewMatrix_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getViewMatrix_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyIOSAs<NSValue/* float* */>(__result__)).cast<NSValue/* float* */>().toList();
  }
  
  
  Future<List<NSValue/* float* */>> getProjectionMatrix_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getProjectionMatrix_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyIOSAs<NSValue/* float* */>(__result__)).cast<NSValue/* float* */>().toList();
  }
  
  
  Future<List<MAMapPoint>> getOffsetPoint_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getOffsetPoint_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyIOSAs<MAMapPoint>(__result__)).cast<MAMapPoint>().toList();
  }
  
  
  Future<List<double>> getMapZoomLevel_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::getMapZoomLevel_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<CGPoint>> glPointForMapPoint_batch(List<MAMapPoint> mapPoint) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::glPointForMapPoint_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"mapPoint": mapPoint[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyIOSAs<CGPoint>(__result__)).cast<CGPoint>().toList();
  }
  
  
  Future<List<List<CGPoint>>> glPointsForMapPoints_count_batch(List<List<MAMapPoint>> mapPoints, List<int> count) async {
    assert(mapPoints.length == count.length);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::glPointsForMapPoints_count_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"mapPoints": mapPoints[__i__], "count": count[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => AmapMapFluttifyIOSAs<CGPoint>(it))?.toList()).cast<List<CGPoint>>().toList();
  }
  
  
  Future<List<double>> glWidthForWindowWidth_batch(List<double> windowWidth) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::glWidthForWindowWidth_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"windowWidth": windowWidth[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  @deprecated
  Future<List<void>> renderLinesWithPoints_pointCount_strokeColor_lineWidth_looped_batch(List<List<CGPoint>> points, List<int> pointCount, List<UIColor> strokeColor, List<double> lineWidth, List<bool> looped) async {
    assert(points.length == pointCount.length && pointCount.length == strokeColor.length && strokeColor.length == lineWidth.length && lineWidth.length == looped.length);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAOverlayRenderer::renderLinesWithPoints_pointCount_strokeColor_lineWidth_looped_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"points": points[__i__], "pointCount": pointCount[__i__], "strokeColor": strokeColor[__i__], "lineWidth": lineWidth[__i__], "looped": looped[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}