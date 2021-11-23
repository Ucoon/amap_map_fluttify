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

class com_amap_api_maps_model_BuildingOverlayOptions extends com_amap_api_maps_model_BaseOptions  {
  //region constants
  static const String name__ = 'com.amap.api.maps.model.BuildingOverlayOptions';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_amap_api_maps_model_BuildingOverlayOptions> create__() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_model_BuildingOverlayOptions__',
    
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__);
  }
  
  static Future<List<com_amap_api_maps_model_BuildingOverlayOptions>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_model_BuildingOverlayOptions__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<double> getZIndex() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getZIndex([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getZIndex', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setZIndex(double var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setZIndex([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setZIndex', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setVisible(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setVisible([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setVisible', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> isVisible() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::isVisible([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::isVisible', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingHeightScale(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingHeightScale([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingHeightScale', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__);
  }
  
  
  Future<int> getBuildingHeightScale() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingHeightScale([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingHeightScale', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingTopColor(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingTopColor([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingTopColor', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__);
  }
  
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingSideColor(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingSideColor([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingSideColor', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__);
  }
  
  
  Future<int> getBuildingSideColor() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingSideColor([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingSideColor', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int> getBuildingTopColor() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingTopColor([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingTopColor', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingHeight(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingHeight([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingHeight', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__);
  }
  
  
  Future<int> getBuildingHeight() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingHeight([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingHeight', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_amap_api_maps_model_LatLng>> getBuildingLatlngs() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getBuildingLatlngs([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingLatlngs', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_LatLng>(it))?.toList();
  }
  
  
  Future<Int32List> getPoints() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::getPoints([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getPoints', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__ as Int32List;
  }
  
  
  Future<com_amap_api_maps_model_BuildingOverlayOptions> setBuildingLatlngs(List<com_amap_api_maps_model_LatLng> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.BuildingOverlayOptions@$refId::setBuildingLatlngs([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingLatlngs', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_maps_model_BuildingOverlayOptions{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_model_BuildingOverlayOptions_Batch on List<com_amap_api_maps_model_BuildingOverlayOptions> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<double>> getZIndex_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getZIndex_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<double>().toList();
  }
  
  
  Future<List<void>> setZIndex_batch(List<double> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setZIndex_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setVisible_batch(List<bool> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setVisible_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<bool>> isVisible_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::isVisible_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<com_amap_api_maps_model_BuildingOverlayOptions>> setBuildingHeightScale_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingHeightScale_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__)).cast<com_amap_api_maps_model_BuildingOverlayOptions>().toList();
  }
  
  
  Future<List<int>> getBuildingHeightScale_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingHeightScale_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<com_amap_api_maps_model_BuildingOverlayOptions>> setBuildingTopColor_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingTopColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__)).cast<com_amap_api_maps_model_BuildingOverlayOptions>().toList();
  }
  
  
  Future<List<com_amap_api_maps_model_BuildingOverlayOptions>> setBuildingSideColor_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingSideColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__)).cast<com_amap_api_maps_model_BuildingOverlayOptions>().toList();
  }
  
  
  Future<List<int>> getBuildingSideColor_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingSideColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<int>> getBuildingTopColor_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingTopColor_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<com_amap_api_maps_model_BuildingOverlayOptions>> setBuildingHeight_batch(List<int> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingHeight_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__)).cast<com_amap_api_maps_model_BuildingOverlayOptions>().toList();
  }
  
  
  Future<List<int>> getBuildingHeight_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingHeight_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  Future<List<List<com_amap_api_maps_model_LatLng>>> getBuildingLatlngs_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getBuildingLatlngs_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_LatLng>(it))?.toList()).cast<List<com_amap_api_maps_model_LatLng>>().toList();
  }
  
  
  Future<List<Int32List>> getPoints_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::getPoints_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__ as Int32List).cast<Int32List>().toList();
  }
  
  
  Future<List<com_amap_api_maps_model_BuildingOverlayOptions>> setBuildingLatlngs_batch(List<List<com_amap_api_maps_model_LatLng>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.BuildingOverlayOptions::setBuildingLatlngs_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_BuildingOverlayOptions>(__result__)).cast<com_amap_api_maps_model_BuildingOverlayOptions>().toList();
  }
  
  //endregion
}