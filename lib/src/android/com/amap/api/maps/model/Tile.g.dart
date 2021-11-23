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

class com_amap_api_maps_model_Tile extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.amap.api.maps.model.Tile';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<com_amap_api_maps_model_Tile> create__int__int__byteArray(int var1, int var2, Uint8List var3) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_model_Tile__int__int__byteArray',
      {"var1": var1, "var2": var2, "var3": var3}
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_Tile>(__result__);
  }
  
  static Future<List<com_amap_api_maps_model_Tile>> create_batch__int__int__byteArray(List<int> var1, List<int> var2, List<Uint8List> var3) async {
    assert(var1.length == var2.length && var2.length == var3.length);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_model_Tile__int__int__byteArray',
      [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__], "var2": var2[__i__], "var3": var3[__i__]}]
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_Tile>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<int> get_width() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.model.Tile::get_width", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_height() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.model.Tile::get_height", {'__this__': this});
    return __result__;
  }
  
  Future<Uint8List> get_data() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.model.Tile::get_data", {'__this__': this});
    return __result__ as Uint8List;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<com_amap_api_maps_model_Tile> obtain(int var0, int var1, Uint8List var2) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.model.Tile::obtain([\'var0\':$var0, \'var1\':$var1, \'var2\':$var2])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.Tile::obtain', {"var0": var0, "var1": var1, "var2": var2});
  
  
    // handle native call
  
  
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_model_Tile>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_maps_model_Tile{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_model_Tile_Batch on List<com_amap_api_maps_model_Tile> {
  //region getters
  Future<List<int>> get_width_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.model.Tile::get_width_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<int>> get_height_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.model.Tile::get_height_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<Uint8List>> get_data_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.model.Tile::get_data_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__ as Uint8List)?.cast<Uint8List>()?.toList();
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<com_amap_api_maps_model_Tile>> obtain_batch(List<int> var0, List<int> var1, List<Uint8List> var2) async {
    assert(var0.length == var1.length && var1.length == var2.length);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.model.Tile::obtain_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__], "var1": var1[__i__], "var2": var2[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyAndroidAs<com_amap_api_maps_model_Tile>(__result__)).cast<com_amap_api_maps_model_Tile>().toList();
  }
  
  //endregion
}