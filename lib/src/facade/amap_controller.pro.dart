part of 'amap_view.widget.dart';

mixin _Pro on _Holder, _Community {
  /// 添加瓦片图
  @override
  Future<IUrlTileOverlay> addUrlTileOverlay(UrlTileOption option) async {
    assert(option != null);
    final width = option.width;
    final height = option.height;
    final urlTemplate = option.urlTemplate;
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        final options =
            await com_amap_api_maps_model_TileOverlayOptions.create__();
        final provider = await com_amap_api_maps_model_UrlTileProvider_X.create(
            width, height, urlTemplate);
        await options.tileProvider(provider);
        await options.diskCacheEnabled(true);
        await options.diskCacheSize(100000);
        await options.memoryCacheEnabled(true);
        await options.memCacheSize(100000);
        await options.zIndex(-9999);

        // 进行添加
        final tile = await _androidMap.addTileOverlay(options);
        pool..add(options)..add(provider);

        return UrlTileOverlay.android(tile);
      },
      ios: (pool) async {
        await iosController.set_delegate(iosMapDelegate);

        final overlay = await MATileOverlay.create__();
        await overlay.initWithURLTemplate(urlTemplate);
        await overlay.set_tileSize(
          await CGSize.create(width.toDouble(), height.toDouble()),
        );

        // 添加热力图
        await iosController.addOverlay(overlay);

        pool..add(overlay);

        return UrlTileOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 自定义弹窗
  Future<void> showCustomInfoWindow(Marker marker, Widget widget) async {
    final imageData = (await state.widgetToImageData([widget]))?.first;
    if (imageData == null) return;

    // 准备弹窗需要的数据
    await platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();
        await kAmapMapFluttifyChannel.invokeMethod(
          'com.amap.api.maps.AMap::setInfoWindowAdapterX',
          {'__this__': _androidMap},
        );
        final bitmap = await android_graphics_Bitmap.create(imageData);
        await pushStack('infoWindow', bitmap);

        pool..add(bitmap);
      },
      ios: (pool) async {
        // 创建弹窗view
        final bitmap = await UIImage.create(imageData);
        final imageView = await UIImageView.create(bitmap);

        final frame = await imageView.frame;
        final width = await frame.width;
        final height = await frame.height;

        // 去掉默认的弹窗
        final annotationView =
            await iosController.viewForAnnotation(marker.iosModel);
        await annotationView?.set_canShowCallout(false, viewChannel: false);
        // 由于默认偏移量是0, 这里根据弹窗view设置一下偏移量
        await annotationView?.set_calloutOffset(
          await CGPoint.create(-width / 2, -height),
          viewChannel: false,
        );

        // 创建自定义弹窗
        final calloutView = await MACustomCalloutView.create__();
        await calloutView.initWithCustomView(imageView, viewChannel: false);

        // 设置自定义弹窗
        await annotationView?.set_customCalloutView(calloutView,
            viewChannel: false);

        pool..add(bitmap)..add(imageView)..add(calloutView);
      },
    );

    // 显示弹窗
    await marker.showInfoWindow();
  }

  /// 添加图片覆盖物
  @override
  Future<IGroundOverlay> addGroundOverlay(GroundOverlayOption option) async {
    assert(option != null);
    final imageData = await option.imageProvider
        .toImageData(createLocalImageConfiguration(state.context));
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        final groundOverlayOption =
            await com_amap_api_maps_model_GroundOverlayOptions.create__();

        // 创建图片边界
        final southWestPoint =
            await com_amap_api_maps_model_LatLng.create__double__double(
                option.southWest.latitude, option.southWest.longitude);
        final northEastPoint =
            await com_amap_api_maps_model_LatLng.create__double__double(
                option.northEast.latitude, option.northEast.longitude);

        final bounds = await com_amap_api_maps_model_LatLngBounds
            .create__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
                southWestPoint, northEastPoint);
        await groundOverlayOption.positionFromBounds(bounds);

        // 创建图片
        final bitmap = await android_graphics_Bitmap.create(imageData);
        final descriptor = await com_amap_api_maps_model_BitmapDescriptorFactory
            .fromBitmap(bitmap);
        await groundOverlayOption.image(descriptor);

        // 进行添加
        final groundOverlay =
            await _androidMap.addGroundOverlay(groundOverlayOption);

        await bitmap.recycle();
        pool
          ..add(groundOverlayOption)
          ..add(southWestPoint)
          ..add(descriptor)
          ..add(northEastPoint);

        return GroundOverlay.android(groundOverlay);
      },
      ios: (pool) async {
        await iosController.set_delegate(iosMapDelegate);

        final southWestPoint = await CLLocationCoordinate2D.create(
          option.southWest.latitude,
          option.southWest.longitude,
        );
        final northEastPoint = await CLLocationCoordinate2D.create(
          option.northEast.latitude,
          option.northEast.longitude,
        );
        final bounds =
            await MACoordinateBoundsMake(northEastPoint, southWestPoint);

        final bitmap = await UIImage.create(imageData);
        final overlay =
            await MAGroundOverlay.groundOverlayWithBounds_icon(bounds, bitmap);

        // 添加热力图
        await iosController.addOverlay(overlay);

        pool
          ..add(southWestPoint)
          ..add(northEastPoint)
          ..add(bounds)
          ..add(bitmap);

        return GroundOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 添加热力图
  @override
  Future<IHeatmapOverlay> addHeatmapTileOverlay(
    HeatmapTileOption option,
  ) async {
    assert(option != null);
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        // 创建热力图Provider
        final builder =
            await com_amap_api_maps_model_HeatmapTileProvider_Builder
                .create__();
        List<com_amap_api_maps_model_LatLng> latLngList = [];
        for (final latLng in option.coordinateList) {
          latLngList.add(await com_amap_api_maps_model_LatLng
              .create__double__double(latLng.latitude, latLng.longitude));
        }
        await builder.data(latLngList);
        if (option.gradient != null) {
          await builder.gradient(
            await com_amap_api_maps_model_GradientX.create(
              Int32List.fromList(
                  option.gradient.colors.map((e) => e.value).toList()),
              Float64List.fromList(option.gradient.stops),
            ),
          );
          // if (option.gradient.radius != null) {
          //   await builder.radius(option.gradient.radius?.toInt());
          // }
        }

        // 创建Tile Overlay选项
        final tileOverlayOption =
            await com_amap_api_maps_model_TileOverlayOptions.create__();
        await tileOverlayOption.tileProvider(await builder.build());

        // 添加热力图
        final heatmap = await _androidMap.addTileOverlay(tileOverlayOption);

        pool
          ..add(builder)
          ..addAll(latLngList)
          ..add(tileOverlayOption);

        return HeatmapOverlay.android(heatmap);
      },
      ios: (pool) async {
        await iosController.set_delegate(iosMapDelegate);

        // 创建热力图选项
        final overlay = await MAHeatMapTileOverlay.create__();

        // 构造热力图结点
        List<MAHeatMapNode> nodeList = [];
        for (final latLng in option.coordinateList) {
          final node = await MAHeatMapNode.create__();
          final coordinate = await CLLocationCoordinate2D.create(
            latLng.latitude,
            latLng.longitude,
          );
          pool..add(node)..add(coordinate);

          // 坐标点
          await node.set_coordinate(coordinate);
          // 权重值 暂时全部都为1
          await node.set_intensity(1);
          // 权重值 暂时全部都为1
          nodeList.add(node);
        }
        // 添加结点数据
        await overlay.set_data(nodeList);
        if (option.gradient != null) {
          final gradient = await MAHeatMapGradient.create__(init: false);
          await gradient.initWithColor_andWithStartPoints(
            <UIColor>[
              for (final color in option.gradient.colors)
                await UIColor.create(color)
            ],
            option.gradient.stops,
          );
          await overlay.set_gradient(gradient);

          // if (option.gradient.radius != null) {
          //   await overlay.set_radius(option.gradient.radius.toInt());
          // }
        }

        // 添加热力图
        await iosController.addOverlay(overlay);

        pool.addAll(nodeList);

        return HeatmapOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 将指定的经纬度列表(包括但不限于marker, polyline, polygon等)调整至同一屏幕中显示
  ///
  /// [bounds]边界点形成的边界, [padding]地图内边距
  @override
  Future<void> zoomToSpan(
    List<LatLng> bounds, {
    EdgeInsets padding = const EdgeInsets.all(50),
    bool animated = true,
  }) async {
    final double minLat = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.latitude < cur.latitude ? pre : cur)
        .then((bottom) => bottom.latitude);
    final double minLng = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.longitude < cur.longitude ? pre : cur)
        .then((left) => left.longitude);
    final double maxLat = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.latitude > cur.latitude ? pre : cur)
        .then((top) => top.latitude);
    final double maxLng = await Stream.fromIterable(bounds)
        .reduce((pre, cur) => pre.longitude > cur.longitude ? pre : cur)
        .then((right) => right.longitude);

    await platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        // 西南角
        final southWest = await com_amap_api_maps_model_LatLng
            .create__double__double(minLat, minLng);
        // 东北角
        final northEast = await com_amap_api_maps_model_LatLng
            .create__double__double(maxLat, maxLng);

        // 可视区域矩形
        final rect = await com_amap_api_maps_model_LatLngBounds
            .create__com_amap_api_maps_model_LatLng__com_amap_api_maps_model_LatLng(
                southWest, northEast);

        // 更新对象 android端由于单位是像素, 所以这里要乘以当前设备的像素密度
        final cameraUpdate =
            await com_amap_api_maps_CameraUpdateFactory.newLatLngBoundsRect(
          rect,
          (padding.left.toInt() * ui.window.devicePixelRatio).toInt(),
          (padding.right.toInt() * ui.window.devicePixelRatio).toInt(),
          (padding.top.toInt() * ui.window.devicePixelRatio).toInt(),
          (padding.bottom.toInt() * ui.window.devicePixelRatio).toInt(),
        );

        if (animated) {
          await _androidMap
              .animateCamera__com_amap_api_maps_CameraUpdate(cameraUpdate);
        } else {
          await _androidMap.moveCamera(cameraUpdate);
        }

        pool..add(southWest)..add(northEast)..add(rect)..add(cameraUpdate);
      },
      ios: (pool) async {
        // 由于屏幕坐标的(0, 0)左上角, 所以需要西北角和东南角
        // 西北角
        final northWest = await CLLocationCoordinate2D.create(maxLat, minLng);
        // 东南角
        final southEast = await CLLocationCoordinate2D.create(minLat, maxLng);

        // 西北角屏幕坐标
        final northWestPoint = await MAMapPointForCoordinate(northWest);
        // 东南角屏幕坐标
        final southEastPoint = await MAMapPointForCoordinate(southEast);

        // 矩形原点x
        final x = await northWestPoint.get_x();
        // 矩形原点y
        final y = await northWestPoint.get_y();
        // 矩形宽度
        final width =
            (await southEastPoint.get_x() - await northWestPoint.get_x()).abs();
        // 矩形高度
        final height =
            (await southEastPoint.get_y() - await northWestPoint.get_y()).abs();

        // 矩形
        final rect = await MAMapRectMake(x, y, width, height);

        await iosController.setVisibleMapRect_edgePadding_animated(
          rect,
          await UIEdgeInsets.create(
            padding.top,
            padding.left,
            padding.bottom,
            padding.right,
          ),
          animated,
        );

        pool
          ..add(northWest)
          ..add(southEast)
          ..add(northWestPoint)
          ..add(southEastPoint)
          ..add(rect);
      },
    );
  }

  // TODO 添加文字

  /// 自定义地图
  ///
  /// 三个参数对应自定义地图压缩包内的三个文件
  @override
  Future<void> setCustomMapStyle({
    String styleDataPath,
    String styleExtraPath,
    String texturePath,
  }) async {
    Uint8List styleData;
    if (styleDataPath != null) {
      styleData = await rootBundle
          .load(styleDataPath)
          .then((byteData) => byteData.buffer.asUint8List());
    }
    Uint8List styleExtra;
    if (styleExtraPath != null) {
      styleExtra = await rootBundle
          .load(styleExtraPath)
          .then((byteData) => byteData.buffer.asUint8List());
    }
    Uint8List texture;
    if (texturePath != null) {
      texture = await rootBundle
          .load(texturePath)
          .then((byteData) => byteData.buffer.asUint8List());
    }
    await platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        // 构造选项
        final option =
            await com_amap_api_maps_model_CustomMapStyleOptions.create__();
        await option.setEnable(true);
        if (styleData != null) await option.setStyleData(styleData);
        if (styleExtra != null) await option.setStyleExtraData(styleExtra);
        if (texture != null) await option.setStyleTextureData(texture);

        await _androidMap.setCustomMapStyle(option);

        pool..add(option);
      },
      ios: (pool) async {
        // 构造选项
        final option = await MAMapCustomStyleOptions.create__();

        if (styleData != null) {
          final styleDataNSData = await NSData.createWithUint8List(styleData);
          await option.set_styleData(styleDataNSData);
          pool.add(styleDataNSData);
        }
        if (styleExtra != null) {
          final styleExtraNSData = await NSData.createWithUint8List(styleExtra);
          await option.set_styleExtraData(styleExtraNSData);
          pool.add(styleExtraNSData);
        }
        if (texture != null) {
          final textureNSData = await NSData.createWithUint8List(texture);
          await option.set_styleTextureData(textureNSData);
          pool.add(textureNSData);
        }

        await iosController.setCustomMapStyleOptions(option);
        await iosController.set_customMapStyleEnabled(true);

        pool.add(option);
      },
    );
  }

  /// 设置海量点点击监听事件
  Future<void> setMultiPointClickedListener(
    OnMultiPointClicked onMultiPointClicked,
  ) async {
    await platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        await _androidMap.setOnMultiPointClickListener(
            androidMapDelegate..onMultiPointClicked = onMultiPointClicked);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          iosMapDelegate..onMultiPointClicked = onMultiPointClicked,
        );
      },
    );
  }

  /// 添加平滑移动marker
  ///
  /// 根据[options]批量创建Marker
  @override
  Future<ISmoothMoveMarker> addSmoothMoveMarker(
    SmoothMoveMarkerOption option,
  ) async {
    assert(option != null);
    final latitudeBatch = option.path.map((e) => e.latitude).toList();
    final longitudeBatch = option.path.map((e) => e.longitude).toList();
    final iconData = await option.iconProvider
        ?.toImageData(createLocalImageConfiguration(state.context));
    return platform(
      android: (pool) async {
        // 获取地图
        _androidMap ??= await androidController.getMap();

        // 创建平滑移动marker对象
        final marker = await com_amap_api_maps_utils_overlay_SmoothMoveMarker
            .create__com_amap_api_maps_AMap(_androidMap);

        // 创建marker的图标
        final bitmap = await android_graphics_Bitmap.create(iconData);
        final bitmapDescriptor =
            await com_amap_api_maps_model_BitmapDescriptorFactory
                .fromBitmap(bitmap);

        // 设置图标
        await marker.setDescriptor(bitmapDescriptor);

        // 动画途经点
        final points = await com_amap_api_maps_model_LatLng
            .create_batch__double__double(latitudeBatch, longitudeBatch);

        // 设置途经点
        await marker.setPoints(points);
        // 设置动画时长
        await marker.setTotalDuration(option.duration.inSeconds);
        // 执行动画
        await marker.startSmoothMove();

        pool
          ..add(bitmap)
          ..add(bitmapDescriptor)
          ..addAll(points);
        return SmoothMoveMarker.android(marker);
      },
      ios: (pool) async {
        await iosController.set_delegate(
          iosMapDelegate..iosController = iosController,
        );

        // 创建annotation
        final annotation = await MAAnimatedAnnotation.create__();

        // 动画途经点
        final points = await CLLocationCoordinate2D.create_batch(
            latitudeBatch, longitudeBatch);

        // 设置图片
        // 普通图片
        final icon = await UIImage.create(iconData);
        await annotation.setIcon(icon);

        // 设置起始点
        await annotation.set_coordinate(points[0]);

        // 添加动画
        final animation = await annotation
            .addMoveAnimationWithKeyCoordinates_count_withDuration_withName_completeCallback(
          points,
          points.length,
          option.duration.inSeconds.toDouble(),
          'name',
          (finished) {},
        );

        await iosController.addAnnotation(annotation);

        pool
          ..addAll(points)
          ..add(icon);
        return SmoothMoveMarker.ios(iosController, animation, annotation);
      },
    );
  }

  /// 添加海量点
  @override
  Future<IMultiPointOverlay> addMultiPointOverlay(
    MultiPointOption option,
  ) async {
    assert(option != null && option.pointList.isNotEmpty);

    final latitudeBatch =
        option.pointList.map((it) => it.coordinate.latitude).toList();
    final longitudeBatch =
        option.pointList.map((it) => it.coordinate.longitude).toList();
    final idBatch = option.pointList.map((it) => it.id).toList();
    final titleBatch = option.pointList.map((it) => it.title).toList();
    final snippetBatch = option.pointList.map((it) => it.snippet).toList();
    final objectBatch = option.pointList.map((it) => it.object).toList();
    Uint8List iconData;
    if (option.iconProvider != null) {
      iconData = await option.iconProvider
          .toImageData(createLocalImageConfiguration(state.context));
    }

    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        final overlayOptions =
            await com_amap_api_maps_model_MultiPointOverlayOptions.create__();

        final latLngBatch = await com_amap_api_maps_model_LatLng
            .create_batch__double__double(latitudeBatch, longitudeBatch);

        // 设置marker图标
        // 普通图片
        if (iconData != null) {
          final bitmap = await android_graphics_Bitmap.create(iconData);
          final icon = await com_amap_api_maps_model_BitmapDescriptorFactory
              .fromBitmap(bitmap);
          await overlayOptions.icon(icon);

          pool..add(bitmap)..add(icon);
        }

        final multiPointOverlay =
            await _androidMap.addMultiPointOverlay(overlayOptions);

        final multiPointList = await com_amap_api_maps_model_MultiPointItem
            .create_batch__com_amap_api_maps_model_LatLng(latLngBatch);
        await multiPointList.setCustomerId_batch(idBatch);
        await multiPointList.setTitle_batch(titleBatch);
        await multiPointList.setSnippet_batch(snippetBatch);
        await multiPointList.setObject_batch(objectBatch);

        await multiPointOverlay.setItems(multiPointList);

        pool..addAll(latLngBatch);
        return MultiPointOverlay.android(multiPointOverlay);
      },
      ios: (pool) async {
        await iosController.set_delegate(iosMapDelegate);

        final overlay = await MAMultiPointOverlay.create__();

        final length = option.pointList.length;
        final pointItemList = await MAMultiPointItem.create_batch__(length);

        final latLngBatch = await CLLocationCoordinate2D.create_batch(
            latitudeBatch, longitudeBatch);

        // 设置marker图标
        // 普通图片
        if (iconData != null) {
          final bitmap = await UIImage.create(iconData);
          await overlay.addProperty__(1, bitmap);
          pool.add(bitmap);
        }
        await pointItemList.set_coordinate_batch(latLngBatch);
        await pointItemList.set_customID_batch(idBatch);
        await pointItemList.set_title_batch(titleBatch);
        await pointItemList.set_subtitle_batch(snippetBatch);
        await pointItemList.addJsonableProperty_batch(1, objectBatch);

        await overlay.initWithMultiPointItems(pointItemList);

        await iosController.addOverlay(overlay);

        pool..addAll(pointItemList)..addAll(latLngBatch);
        return MultiPointOverlay.ios(overlay, iosController);
      },
    );
  }

  /// 设置地图朝向
  ///
  /// [bearing] 朝向角度, 单位为度(°), 范围为[0°,360°]
  @override
  Future<void> setBearing(double bearing, {bool animated = true}) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        final update =
            await com_amap_api_maps_CameraUpdateFactory.changeBearing(bearing);
        if (animated) {
          await _androidMap
              .animateCamera__com_amap_api_maps_CameraUpdate(update);
        } else {
          await _androidMap.moveCamera(update);
        }

        pool..add(update);
      },
      ios: (pool) async {
        if (bearing < 0) bearing = 360 + (bearing % 360);

        final currentRotation = await iosController.get_rotationDegree();
        if ((bearing - currentRotation).abs() > 180) {
          await iosController.setRotationDegree_animated_duration(
            360 - bearing,
            animated,
            0.3,
          );
        } else {
          await iosController.setRotationDegree_animated_duration(
            bearing,
            animated,
            0.3,
          );
        }
      },
    );
  }

  /// 设置地图倾斜度
  @override
  Future<void> setTilt(double tilt, {bool animated = true}) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        final update =
            await com_amap_api_maps_CameraUpdateFactory.changeTilt(tilt);
        if (animated) {
          await _androidMap
              .animateCamera__com_amap_api_maps_CameraUpdate(update);
        } else {
          await _androidMap.moveCamera(update);
        }

        pool..add(update);
      },
      ios: (pool) async {
        await iosController.setCameraDegree_animated_duration(
          tilt,
          animated,
          0.3,
        );
      },
    );
  }

  /// 显示/隐藏3D楼块效果
  @override
  Future<void> showBuildings(bool show) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        await _androidMap.showBuildings(show);
      },
      ios: (pool) async {
        await iosController.set_showsBuildings(show);
      },
    );
  }

  /// 显示/隐藏地图上的文字标注
  @override
  Future<void> showMapText(bool show) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        await _androidMap.showMapText(show);
      },
      ios: (pool) async {
        await iosController.set_showsLabels(show);
      },
    );
  }

  /// 一次性设置地图视角
  @override
  Future<void> setCameraPosition({
    @required LatLng coordinate,
    double zoom,
    double tilt,
    double bearing,
    bool animated = true,
    Duration duration = const Duration(milliseconds: 500),
  }) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        final builder = await com_amap_api_maps_model_CameraPosition.builder();
        if (coordinate != null) {
          final latLng =
              await com_amap_api_maps_model_LatLng.create__double__double(
            coordinate.latitude,
            coordinate.longitude,
          );
          await builder.target(latLng);
        }
        if (zoom != null) {
          await builder.zoom(zoom);
        }
        if (tilt != null) {
          await builder.tilt(tilt);
        }
        if (bearing != null) {
          await builder.bearing(bearing);
        }

        final update = await com_amap_api_maps_CameraUpdateFactory
            .newCameraPosition(await builder.build());
        if (animated) {
          await _androidMap
              .animateCamera__com_amap_api_maps_CameraUpdate__int__com_amap_api_maps_AMap_CancelableCallback(
            update,
            duration.inMilliseconds,
            null,
          );
        } else {
          await _androidMap.moveCamera(update);
        }

        pool..add(update);
      },
      ios: (pool) async {
        final status = await MAMapStatus.create__();
        if (coordinate != null) {
          final latLng = await CLLocationCoordinate2D.create(
              coordinate.latitude, coordinate.longitude);
          await status.set_centerCoordinate(latLng);
        }
        if (zoom != null) {
          await status.set_zoomLevel(zoom);
        }
        if (tilt != null) {
          await status.set_cameraDegree(tilt);
        }
        if (bearing != null) {
          bearing = (bearing.remainder(360) + 360).remainder(360);
          final currentRotation = await iosController.get_rotationDegree();
          if ((currentRotation - bearing).abs() > 180) {
            double fixed = bearing;
            if (bearing > 180) {
              fixed = (bearing - 360);
            } else {
              fixed = (360 + bearing);
            }
            // print(
            //     'currentRotation: $currentRotation, bearing: $bearing, 修正后bearing: $fixed');
            await status.set_rotationDegree(fixed);
          } else {
            await status.set_rotationDegree(bearing);
            // print('currentRotation: $currentRotation, bearing: $bearing');
          }
        }
        await iosController.setMapStatus_animated_duration(
          status,
          animated,
          duration.inMilliseconds / 1000,
        );
      },
    );
  }

  /// 根据起点[from]和终点[to]坐标, 搜索出路径并将驾车路线规划结果[driveRouteResult]添加到地图上, 可以配置交通拥堵情况[trafficOption],
  /// 路线的宽度[lineWidth], 自定纹理[customTexture].
  @override
  Future<void> addDriveRoute({
    @required LatLng from,
    @required LatLng to,
    List<LatLng> passbyPointList,
    TrafficOption trafficOption,
    double lineWidth = 10,
    ImageProvider customTexture,
  }) async {
    assert(from != null && to != null);
    // 搜索路径
    final route = await AmapSearch.instance.searchDriveRoute(
      from: from,
      to: to,
      passedByPoints: passbyPointList ?? [],
    );

    // 添加路径
    for (final path in await route.drivePathList) {
      for (final step in await path.driveStepList) {
        if (trafficOption != null && trafficOption.show) {
          for (final tmc in await step.tmsList) {
            final status = await tmc.status;
            Color statusColor = Colors.green;
            switch (status) {
              case '缓行':
                statusColor = Colors.yellow;
                break;
              case '拥堵':
                statusColor = Colors.red;
                break;
              case '未知':
                statusColor = Colors.blue;
                break;
              default:
                break;
            }
            await addPolyline(PolylineOption(
              coordinateList: await tmc.polyline,
              strokeColor: statusColor,
              width: lineWidth,
              textureProvider: customTexture,
            ));
          }
        } else {
          await addPolyline(PolylineOption(
            coordinateList: await step.polyline,
            width: lineWidth,
            textureProvider: customTexture,
          ));
        }
      }
    }
  }

  /// 添加地区轮廓
  ///
  /// 地区名称[districtName], 轮廓宽度[width], 轮廓颜色[strokeColor], 填充颜色[fillColor]
  ///
  /// 由于一个省份可能包含多个区域, 比如浙江包含很多岛屿, 如果把岛屿也画进去, 那么会非常消耗性能.
  /// 业务上而言, 我认为这些岛屿是否画进去基本上不影响使用, 所以增加了[onlyMainDistrict]参数
  /// 来控制是否只显示主要部分的边界, 如果你对地区完整度的需求非常高, 那么就把[onlyMainDistrict]
  /// 设置为false, 随之而来像浙江这种地区的边界绘制起来就会非常慢.
  /// 我的测试结果是MIX 3, release模式下需要5-6秒才能绘制完成.
  ///
  /// 采样率[sampleRate]可以控制经纬度列表的密度, 如果地区边界的经纬度列表长度非常长, 造成了卡顿,
  /// 那么可以把采样率调低一点, 这样画出来的区域可能没有采样率为1时那么精确, 但是减小了经纬度列表长度,
  /// 可以提升绘制速度.
  @override
  Future<List<IPolygon>> addDistrictOutline(
    String districtName, {
    double width = 5,
    Color strokeColor = Colors.green,
    Color fillColor = Colors.transparent,
    bool onlyMainDistrict = true,
    double sampleRate = 1.0,
  }) async {
    assert(districtName != null && districtName.isNotEmpty);
    assert(sampleRate > 0 && sampleRate <= 1);
    final district = await AmapSearch.instance
        .searchDistrict(districtName, showBoundary: true);

    final districtList = await district.districtList;
    if (districtList.isNotEmpty) {
      if (onlyMainDistrict) {
        final sampler = Random();
        List<LatLng> boundary = district.districtList[0].boundary
            .reduce((pre, next) => pre.length > next.length ? pre : next)
              ..retainWhere((_) => sampler.nextDouble() <= sampleRate);
        return [
          await addPolygon(PolygonOption(
            coordinateList: boundary,
            width: width,
            strokeColor: strokeColor,
            fillColor: fillColor,
          ))
        ];
      } else {
        List<List<LatLng>> boundaryList =
            await (await district.districtList)[0].boundary;
        return [
          for (final boundary in boundaryList)
            await addPolygon(PolygonOption(
              coordinateList: boundary,
              width: width,
              strokeColor: strokeColor,
              fillColor: fillColor,
            ))
        ];
      }
    } else {
      return null;
    }
  }

  /// 添加回放轨迹
  ///
  /// [coordinateList] 路径经纬度列表
  /// [width] 路径宽度
  /// [strokeColor] 路径颜色
  /// [iconProvider] 移动marker的图标
  /// [duration] 移动时长
  @override
  Future<IPlaybackTrace> addPlaybackTrace(
    List<LatLng> coordinateList, {
    double width = 5,
    Color strokeColor = Colors.green,
    @required ImageProvider iconProvider,
    @required Duration duration,
  }) async {
    assert(coordinateList != null && coordinateList.isNotEmpty);
    // 画轨迹线
    final polyline = await addPolyline(PolylineOption(
      coordinateList: coordinateList,
      width: width,
      strokeColor: strokeColor,
    ));
    final marker = await addSmoothMoveMarker(SmoothMoveMarkerOption(
      path: coordinateList,
      duration: duration,
      iconProvider: iconProvider,
    ));

    return PlaybackTrace(marker, polyline);
  }

  /// 设置最大缩放等级
  @override
  Future<void> setMaxZoomLevel(double zoomLevel) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        await _androidMap.setMaxZoomLevel(zoomLevel);
      },
      ios: (pool) async {
        await iosController.set_maxZoomLevel(zoomLevel);
      },
    );
  }

  /// 设置最小缩放等级
  @override
  Future<void> setMinZoomLevel(double zoomLevel) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        await _androidMap.setMinZoomLevel(zoomLevel);
      },
      ios: (pool) async {
        await iosController.set_minZoomLevel(zoomLevel);
      },
    );
  }

  /// 设置地图锚点
  @override
  Future<void> setMapAnchor(double anchorU, double anchorV) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();

        await _androidMap.setPointToCenter(anchorU.toInt(), anchorV.toInt());
      },
      ios: (pool) async {
        final anchor = await CGPoint.create(anchorU, anchorV);
        await iosController.set_screenAnchor(anchor);
      },
    );
  }

  @override
  Future<void> setPadding(EdgeInsets padding) async {
    debugPrint('高德地图没有setPadding对应接口');
  }

  @override
  Future<void> setFps(int fps) async {
    return platform(
      android: (pool) async {
        _androidMap ??= await androidController.getMap();
        await _androidMap.setRenderFps(fps);
      },
      ios: (pool) async {
        await iosController.set_maxRenderFrame(fps);
      },
    );
  }
}
