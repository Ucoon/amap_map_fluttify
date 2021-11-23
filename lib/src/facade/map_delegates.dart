// ignore_for_file: non_constant_identifier_names
part of 'amap_view.widget.dart';

final regionController = StreamController.broadcast();

class _IOSMapDelegate extends NSObject
    with _Callbacks, MAMapViewDelegate, MAMultiPointOverlayRendererDelegate {
  MAMapView iosController;

  @override
  Future<void> mapView_didAnnotationViewTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    if (onMarkerClicked != null) {
      await onMarkerClicked(
        Marker.ios(
          // 这里由于传入的类型是MAAnnotation, 而fluttify对于抽象类的实体子类的处理方式是找到sdk
          // 内的第一个实体子类进行实例化, 这里如果放任不管取第一个实体子类的话是MAGroundOverlay
          // 跟当前需要的MAPointAnnotation类是冲突的.
          //
          // 解决办法很简单, 把refId取出来放到目标实体类里就行了
          MAPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
          iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_annotationView_didChangeDragState_fromOldState(
    MAMapView mapView,
    MAAnnotationView view,
    MAAnnotationViewDragState newState,
    MAAnnotationViewDragState oldState,
  ) async {
    final annotation = AmapMapFluttifyIOSAs<MAPointAnnotation>(
      await view.get_annotation(viewChannel: false),
    );
    if (onMarkerDragStarted != null &&
        newState ==
            MAAnnotationViewDragState.MAAnnotationViewDragStateStarting) {
      await onMarkerDragStarted(Marker.ios(annotation, iosController));
    }

    if (onMarkerDragging != null &&
        newState ==
            MAAnnotationViewDragState.MAAnnotationViewDragStateDragging) {
      await onMarkerDragging(Marker.ios(annotation, iosController));
    }

    if (onMarkerDragEnded != null &&
        newState == MAAnnotationViewDragState.MAAnnotationViewDragStateEnding) {
      await onMarkerDragEnded(Marker.ios(annotation, iosController));
    }
  }

  @override
  Future<void> mapView_didSingleTappedAtCoordinate(
    MAMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    if (onMapClicked != null) {
      await onMapClicked(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }

  @override
  Future<void> mapView_didLongPressedAtCoordinate(
    MAMapView mapView,
    CLLocationCoordinate2D coordinate,
  ) async {
    if (onMapLongClicked != null) {
      await onMapLongClicked(LatLng(
        await coordinate.latitude,
        await coordinate.longitude,
      ));
    }
  }

  @override
  Future<void> mapView_regionWillChangeAnimated_wasUserAction(
    MAMapView mapView,
    bool animated,
    bool wasUserAction,
  ) async {
    if (onMapMoveStart != null) {
      final location = await mapView.get_centerCoordinate();
      await onMapMoveStart(MapMove(
        coordinate: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        bearing: await mapView.get_rotationDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapViewRegionChanged(MAMapView mapView) async {
    if (onMapMoving != null) {
      final location = await mapView.get_centerCoordinate();
      await onMapMoving(MapMove(
        coordinate: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        bearing: await mapView.get_rotationDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
    regionController.add(1);
  }

  @override
  Future<void> mapView_regionDidChangeAnimated_wasUserAction(
    MAMapView mapView,
    bool animated,
    bool wasUserAction,
  ) async {
    if (onMapMoveEnd != null) {
      final location = await mapView.get_centerCoordinate();
      await onMapMoveEnd(MapMove(
        coordinate: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        bearing: await mapView.get_rotationDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapView_mapWillZoomByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    if (onMapMoveStart != null) {
      final location = await mapView.get_centerCoordinate();
      await onMapMoveStart(MapMove(
        coordinate: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        bearing: await mapView.get_rotationDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapView_mapDidZoomByUser(
    MAMapView mapView,
    bool wasUserAction,
  ) async {
    if (onMapMoveEnd != null) {
      final location = await mapView.get_centerCoordinate();
      await onMapMoveEnd(MapMove(
        coordinate: LatLng(await location.latitude, await location.longitude),
        zoom: await mapView.get_zoomLevel(),
        tilt: await mapView.get_cameraDegree(),
        bearing: await mapView.get_rotationDegree(),
        isAbroad: await mapView.get_isAbroad(),
      ));
    }
  }

  @override
  Future<void> mapViewRequireLocationAuth(
    CLLocationManager locationManager,
  ) async {
    if (onRequireAlwaysAuth != null) {
      await onRequireAlwaysAuth(locationManager);
    }
  }

  @override
  Future<void> mapView_didAnnotationViewCalloutTapped(
    MAMapView mapView,
    MAAnnotationView view,
  ) async {
    if (onInfoWindowClicked != null) {
      await onInfoWindowClicked(
        Marker.ios(
          MAPointAnnotation()
            ..refId = (await view.get_annotation(viewChannel: false)).refId,
          iosController,
        ),
      );
    }
  }

  @override
  Future<void> mapView_didAddOverlayRenderers(
    MAMapView mapView,
    List<dynamic> overlayRenderers,
  ) async {
    if (overlayRenderers.length == 1 &&
        await AmapMapFluttifyIOSIs<MAMultiPointOverlayRenderer>(
            overlayRenderers[0])) {
      final MAMultiPointOverlayRenderer multiPointRenderer =
          AmapMapFluttifyIOSAs(overlayRenderers[0]);
      await multiPointRenderer.set_delegate(this);
    }
  }

  @override
  Future<void> multiPointOverlayRenderer_didItemTapped(
    MAMultiPointOverlayRenderer renderer,
    MAMultiPointItem item,
  ) async {
    if (onMultiPointClicked != null) {
      final id = await item.get_customID();
      final title = await item.get_title();
      final snippet = await item.get_subtitle();
      final object = await item.getJsonableProperty__(1);
      await onMultiPointClicked(id, title, snippet, object);
    }
  }
}

class _AndroidMapDelegate extends java_lang_Object
    with
        _Callbacks,
        com_amap_api_maps_AMap_OnMarkerClickListener,
        com_amap_api_maps_AMap_OnMarkerDragListener,
        com_amap_api_maps_AMap_OnMapClickListener,
        com_amap_api_maps_AMap_OnMapLongClickListener,
        com_amap_api_maps_AMap_OnCameraChangeListener,
        com_amap_api_maps_AMap_OnMapScreenShotListener,
        com_amap_api_maps_AMap_OnMyLocationChangeListener,
        com_amap_api_maps_AMap_OnInfoWindowClickListener,
        com_amap_api_maps_AMap_OnMapLoadedListener,
        com_amap_api_maps_AMap_OnMultiPointClickListener {
  bool _moveStarted = false;

  @override
  Future<bool> onMarkerClick(com_amap_api_maps_model_Marker var1) async {
    if (onMarkerClicked != null) {
      await onMarkerClicked(Marker.android(var1));
    }
    return true;
  }

  @override
  Future<void> onMarkerDragStart(com_amap_api_maps_model_Marker var1) async {
    if (onMarkerDragStarted != null) {
      await onMarkerDragStarted(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDrag(com_amap_api_maps_model_Marker var1) async {
    if (onMarkerDragging != null) {
      await onMarkerDragging(Marker.android(var1));
    }
  }

  @override
  Future<void> onMarkerDragEnd(com_amap_api_maps_model_Marker var1) async {
    if (onMarkerDragEnded != null) {
      await onMarkerDragEnded(Marker.android(var1));
    }
  }

  @override
  Future<void> onMapClick(com_amap_api_maps_model_LatLng var1) async {
    if (onMapClicked != null) {
      await onMapClicked(LatLng(
        await var1.get_latitude(),
        await var1.get_longitude(),
      ));
    }
  }

  @override
  Future<void> onCameraChange(
    com_amap_api_maps_model_CameraPosition var1,
  ) async {
    final location = await var1.get_target();
    if (onMapMoving != null && _moveStarted) {
      await onMapMoving(MapMove(
        coordinate: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        tilt: await var1.get_tilt(),
        bearing: await var1.get_bearing(),
        isAbroad: await var1.get_isAbroad(),
      ));
    } else if (onMapMoveStart != null && !_moveStarted) {
      await onMapMoveStart(MapMove(
        coordinate: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        bearing: await var1.get_bearing(),
        tilt: await var1.get_tilt(),
        isAbroad: await var1.get_isAbroad(),
      ));
      // 由于ios端只有`开始`和`结束`的回调, 而android这边是只要改变就有回调, 这里回调过
      // 第一次之后就把标记记为已经触发, 在移动结束后再置回来
      _moveStarted = true;
    } else {
      // 防止没有设置_onMapMoveStart, 这里一律在回调后设置成已经开始移动
      _moveStarted = true;
    }
  }

  @override
  Future<void> onCameraChangeFinish(
    com_amap_api_maps_model_CameraPosition var1,
  ) async {
    if (onMapMoveEnd != null) {
      final location = await var1.get_target();
      await onMapMoveEnd(MapMove(
        coordinate: LatLng(
          await location.get_latitude(),
          await location.get_longitude(),
        ),
        zoom: await var1.get_zoom(),
        bearing: await var1.get_bearing(),
        tilt: await var1.get_tilt(),
        isAbroad: await var1.get_isAbroad(),
      ));
    }
    // 无论有没有设置过回调, 这里都给它置回来
    _moveStarted = false;
  }

  @override
  Future<void> onMapScreenShot__android_graphics_Bitmap(
      android_graphics_Bitmap var1) async {
    if (onSnapshot != null) {
      onSnapshot(await var1.data);
      await var1.recycle(); // 回收原生的Bitmap, 由于没有后续操作, 异步执行也无妨.
    }
  }

  @override
  Future<void> onInfoWindowClick(com_amap_api_maps_model_Marker var1) async {
    if (onInfoWindowClicked != null) {
      await onInfoWindowClicked(Marker.android(var1));
    }
  }

  @override
  Future<bool> onPointClick(com_amap_api_maps_model_MultiPointItem var1) async {
    if (onMultiPointClicked != null) {
      final id = await var1.getCustomerId();
      final title = await var1.getTitle();
      final snippet = await var1.getSnippet();
      final object = await var1.getObject();
      await onMultiPointClicked(id, title, snippet, object);
    }
    return true;
  }

  @override
  Future<void> onMapLongClick(com_amap_api_maps_model_LatLng var1) async {
    if (onMapLongClicked != null) {
      await onMapLongClicked(LatLng(
        await var1.get_latitude(),
        await var1.get_longitude(),
      ));
    }
  }
}

mixin _Callbacks {
  OnMarkerClicked onMarkerClicked;
  OnMarkerDrag onMarkerDragStarted;
  OnMarkerDrag onMarkerDragging;
  OnMarkerDrag onMarkerDragEnded;
  OnMapMove onMapMoveStart;
  OnMapMove onMapMoving;
  OnMapMove onMapMoveEnd;
  OnMapClicked onMapClicked;
  OnMapClicked onMapLongClicked;
  ValueChanged<Uint8List> onSnapshot;
  OnMarkerClicked onInfoWindowClicked;
  OnMultiPointClicked onMultiPointClicked;
  ValueChanged<CLLocationManager> onRequireAlwaysAuth;
}
