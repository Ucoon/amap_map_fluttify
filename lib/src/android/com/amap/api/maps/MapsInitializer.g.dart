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

class com_amap_api_maps_MapsInitializer extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.amap.api.maps.MapsInitializer';

  @override
  final String tag__ = 'amap_map_fluttify';

  static final int HTTP = 1;
  static final int HTTPS = 2;
  //endregion

  //region creators
  static Future<com_amap_api_maps_MapsInitializer> create__() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_maps_MapsInitializer__',
    
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_maps_MapsInitializer>(__result__);
  }
  
  static Future<List<com_amap_api_maps_MapsInitializer>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_maps_MapsInitializer__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyAndroidAs<com_amap_api_maps_MapsInitializer>(it))
        .toList();
  }
  
  //endregion

  //region getters
  static Future<String> get_static_sdcardDir() async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.MapsInitializer::get_sdcardDir", );
    return __result__;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<void> initialize(android_content_Context var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::initialize([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::initialize', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setNetWorkEnable(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setNetWorkEnable([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setNetWorkEnable', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> getNetWorkEnable() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getNetWorkEnable([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getNetWorkEnable', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setApiKey(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setApiKey([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setApiKey', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<String> getVersion() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getVersion([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getVersion', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> loadWorldGridMap(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::loadWorldGridMap([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::loadWorldGridMap', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> isLoadWorldGridMap() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::isLoadWorldGridMap([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isLoadWorldGridMap', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> loadWorldVectorMap(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::loadWorldVectorMap([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::loadWorldVectorMap', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> isLoadWorldVectorMap() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::isLoadWorldVectorMap([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isLoadWorldVectorMap', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setBuildingHeight(int var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setBuildingHeight([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setBuildingHeight', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setDownloadCoordinateConvertLibrary(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setDownloadCoordinateConvertLibrary([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setDownloadCoordinateConvertLibrary', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> isDownloadCoordinateConvertLibrary() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::isDownloadCoordinateConvertLibrary([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isDownloadCoordinateConvertLibrary', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setHost(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setHost([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setHost', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setProtocol(int var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setProtocol([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setProtocol', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<int> getProtocol() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getProtocol([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getProtocol', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setTextureViewDestorySync(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setTextureViewDestorySync([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setTextureViewDestorySync', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> getTextureViewDestorySync() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getTextureViewDestorySync([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getTextureViewDestorySync', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setWorldVectorOfflineMapStyleFilePath(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setWorldVectorOfflineMapStyleFilePath([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setWorldVectorOfflineMapStyleFilePath', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<String> getWorldVectorOfflineMapStyleFilePath() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getWorldVectorOfflineMapStyleFilePath([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getWorldVectorOfflineMapStyleFilePath', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setWorldVectorOfflineMapStyleAssetsPath(String var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setWorldVectorOfflineMapStyleAssetsPath([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setWorldVectorOfflineMapStyleAssetsPath', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<String> getWorldVectorOfflineMapStyleAssetsPath() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getWorldVectorOfflineMapStyleAssetsPath([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getWorldVectorOfflineMapStyleAssetsPath', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setTextureDestroyedRender(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setTextureDestroyedRender([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setTextureDestroyedRender', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> getTextureDestroyRender() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getTextureDestroyRender([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getTextureDestroyRender', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setTextureSizeChangedInvoked(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setTextureSizeChangedInvoked([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setTextureSizeChangedInvoked', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> getTextureSizeChangedInvoked() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getTextureSizeChangedInvoked([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getTextureSizeChangedInvoked', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setExceptionLogger(com_amap_api_maps_ExceptionLogger var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setExceptionLogger([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setExceptionLogger', {"var0": var0});
  
  
    // handle native call
    MethodChannel('com.amap.api.maps.MapsInitializer::setExceptionLogger::Callback', kAmapMapFluttifyMethodCodec)
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::com.amap.api.maps.ExceptionLogger::onDownloaderException':
                // print log
                if (fluttifyLogEnabled) {
                  debugPrint('fluttify-dart-callback: onDownloaderException([\'var1\':${args['var1']}, \'var2\':${args['var2']}])');
                }
          
                // handle the native call
                await var0?.onDownloaderException(args['var1'], args['var2']);
                break;
              default:
                throw MissingPluginException('方法${methodCall.method}未实现');
                break;
            }
          } catch (e) {
            debugPrint(e);
            rethrow;
          }
        });
  
    return __result__;
  }
  
  
  static Future<void> disableCachedMapDataUpdate(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::disableCachedMapDataUpdate([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::disableCachedMapDataUpdate', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> isDisableCachedMapDataUpdate() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::isDisableCachedMapDataUpdate([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isDisableCachedMapDataUpdate', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> isSupportRecycleView() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::isSupportRecycleView([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isSupportRecycleView', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setSupportRecycleView(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setSupportRecycleView([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setSupportRecycleView', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<void> setPolyline2Enable(bool var0) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::setPolyline2Enable([\'var0\':$var0])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setPolyline2Enable', {"var0": var0});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  static Future<bool> getPolyline2Enable() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.maps.MapsInitializer::getPolyline2Enable([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getPolyline2Enable', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_maps_MapsInitializer{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_maps_MapsInitializer_Batch on List<com_amap_api_maps_MapsInitializer> {
  //region getters
  Future<List<String>> get_static_sdcardDir_batch() async {
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod("com.amap.api.maps.MapsInitializer::get_sdcardDir_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<String>()?.toList();
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  static Future<List<void>> initialize_batch(List<android_content_Context> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::initialize_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<void>> setNetWorkEnable_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setNetWorkEnable_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> getNetWorkEnable_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getNetWorkEnable_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> setApiKey_batch(List<String> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setApiKey_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<String>> getVersion_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getVersion_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  static Future<List<void>> loadWorldGridMap_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::loadWorldGridMap_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> isLoadWorldGridMap_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isLoadWorldGridMap_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> loadWorldVectorMap_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::loadWorldVectorMap_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> isLoadWorldVectorMap_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isLoadWorldVectorMap_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> setBuildingHeight_batch(List<int> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setBuildingHeight_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<void>> setDownloadCoordinateConvertLibrary_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setDownloadCoordinateConvertLibrary_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> isDownloadCoordinateConvertLibrary_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isDownloadCoordinateConvertLibrary_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> setHost_batch(List<String> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setHost_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<void>> setProtocol_batch(List<int> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setProtocol_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<int>> getProtocol_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getProtocol_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int>().toList();
  }
  
  
  static Future<List<void>> setTextureViewDestorySync_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setTextureViewDestorySync_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> getTextureViewDestorySync_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getTextureViewDestorySync_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> setWorldVectorOfflineMapStyleFilePath_batch(List<String> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setWorldVectorOfflineMapStyleFilePath_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<String>> getWorldVectorOfflineMapStyleFilePath_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getWorldVectorOfflineMapStyleFilePath_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  static Future<List<void>> setWorldVectorOfflineMapStyleAssetsPath_batch(List<String> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setWorldVectorOfflineMapStyleAssetsPath_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<String>> getWorldVectorOfflineMapStyleAssetsPath_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getWorldVectorOfflineMapStyleAssetsPath_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  static Future<List<void>> setTextureDestroyedRender_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setTextureDestroyedRender_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> getTextureDestroyRender_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getTextureDestroyRender_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> setTextureSizeChangedInvoked_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setTextureSizeChangedInvoked_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> getTextureSizeChangedInvoked_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getTextureSizeChangedInvoked_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> disableCachedMapDataUpdate_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::disableCachedMapDataUpdate_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> isDisableCachedMapDataUpdate_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isDisableCachedMapDataUpdate_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<bool>> isSupportRecycleView_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::isSupportRecycleView_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  static Future<List<void>> setSupportRecycleView_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setSupportRecycleView_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<void>> setPolyline2Enable_batch(List<bool> var0) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::setPolyline2Enable_batch', [for (int __i__ = 0; __i__ < var0.length; __i__++) {"var0": var0[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  static Future<List<bool>> getPolyline2Enable_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.maps.MapsInitializer::getPolyline2Enable_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  //endregion
}