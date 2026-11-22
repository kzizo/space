// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Earth Planet Details.png
  AssetGenImage get earthPlanetDetails =>
      const AssetGenImage('assets/images/Earth Planet Details.png');

  /// File path: assets/images/earth_img.png
  AssetGenImage get earthImg =>
      const AssetGenImage('assets/images/earth_img.png');

  /// File path: assets/images/home_header_img.png
  AssetGenImage get homeHeaderImg =>
      const AssetGenImage('assets/images/home_header_img.png');

  /// File path: assets/images/jupiter_img.png
  AssetGenImage get jupiterImg =>
      const AssetGenImage('assets/images/jupiter_img.png');

  /// File path: assets/images/login_background_img.png
  AssetGenImage get loginBackgroundImg =>
      const AssetGenImage('assets/images/login_background_img.png');

  /// File path: assets/images/mars_img.png
  AssetGenImage get marsImg =>
      const AssetGenImage('assets/images/mars_img.png');

  /// File path: assets/images/mercury_img.png
  AssetGenImage get mercuryImg =>
      const AssetGenImage('assets/images/mercury_img.png');

  /// File path: assets/images/neptune_img.png
  AssetGenImage get neptuneImg =>
      const AssetGenImage('assets/images/neptune_img.png');

  /// File path: assets/images/saturn_img.png
  AssetGenImage get saturnImg =>
      const AssetGenImage('assets/images/saturn_img.png');

  /// File path: assets/images/sun_img.png
  AssetGenImage get sunImg => const AssetGenImage('assets/images/sun_img.png');

  /// File path: assets/images/uranus_img.png
  AssetGenImage get uranusImg =>
      const AssetGenImage('assets/images/uranus_img.png');

  /// File path: assets/images/venus_img.png
  AssetGenImage get venusImg =>
      const AssetGenImage('assets/images/venus_img.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    earthPlanetDetails,
    earthImg,
    homeHeaderImg,
    jupiterImg,
    loginBackgroundImg,
    marsImg,
    mercuryImg,
    neptuneImg,
    saturnImg,
    sunImg,
    uranusImg,
    venusImg,
  ];
}

abstract final class Assets {
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
