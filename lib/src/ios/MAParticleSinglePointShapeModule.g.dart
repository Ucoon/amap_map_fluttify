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

class MAParticleSinglePointShapeModule extends NSObject with MAParticleShapeModule {
  //region constants
  static const String name__ = 'MAParticleSinglePointShapeModule';

  @override
  final String tag__ = 'amap_map_fluttify';

  
  //endregion

  //region creators
  static Future<MAParticleSinglePointShapeModule> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createMAParticleSinglePointShapeModule',
      {'init': init}
    );
    return AmapMapFluttifyIOSAs<MAParticleSinglePointShapeModule>(__result__);
  }
  
  static Future<List<MAParticleSinglePointShapeModule>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchMAParticleSinglePointShapeModule',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => AmapMapFluttifyIOSAs<MAParticleSinglePointShapeModule>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<MAParticleSinglePointShapeModule> initWithShapeX_Y_Z_useRatio(double x, double y, double z, bool isUseRatio) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: MAParticleSinglePointShapeModule@$refId::initWithShapeX([\'x\':$x, \'y\':$y, \'z\':$z, \'isUseRatio\':$isUseRatio])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('MAParticleSinglePointShapeModule::initWithShapeX_Y_Z_useRatio', {"x": x, "y": y, "z": z, "isUseRatio": isUseRatio, "__this__": this});
  
  
    // handle native call
  
  
    return AmapMapFluttifyIOSAs<MAParticleSinglePointShapeModule>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'MAParticleSinglePointShapeModule{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension MAParticleSinglePointShapeModule_Batch on List<MAParticleSinglePointShapeModule> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<MAParticleSinglePointShapeModule>> initWithShapeX_Y_Z_useRatio_batch(List<double> x, List<double> y, List<double> z, List<bool> isUseRatio) async {
    assert(x.length == y.length && y.length == z.length && z.length == isUseRatio.length);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('MAParticleSinglePointShapeModule::initWithShapeX_Y_Z_useRatio_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"x": x[__i__], "y": y[__i__], "z": z[__i__], "isUseRatio": isUseRatio[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapMapFluttifyIOSAs<MAParticleSinglePointShapeModule>(__result__)).cast<MAParticleSinglePointShapeModule>().toList();
  }
  
  //endregion
}