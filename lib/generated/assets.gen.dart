/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bakeries.jpg
  AssetGenImage get bakeries =>
      const AssetGenImage('assets/images/bakeries.jpg');

  /// File path: assets/images/bakery_icon.png
  AssetGenImage get bakeryIcon =>
      const AssetGenImage('assets/images/bakery_icon.png');

  /// File path: assets/images/forgot_password.png
  AssetGenImage get forgotPassword =>
      const AssetGenImage('assets/images/forgot_password.png');

  /// File path: assets/images/no_orders.png
  AssetGenImage get noOrders =>
      const AssetGenImage('assets/images/no_orders.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bakeries, bakeryIcon, forgotPassword, noOrders];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/cancelled.json
  String get cancelled => 'assets/lottie/cancelled.json';

  /// File path: assets/lottie/delivered.json
  String get delivered => 'assets/lottie/delivered.json';

  /// File path: assets/lottie/empty_cart.json
  String get emptyCart => 'assets/lottie/empty_cart.json';

  /// File path: assets/lottie/loading.json
  String get loading => 'assets/lottie/loading.json';

  /// File path: assets/lottie/out_for_delivery.json
  String get outForDelivery => 'assets/lottie/out_for_delivery.json';

  /// File path: assets/lottie/pending.json
  String get pending => 'assets/lottie/pending.json';

  /// File path: assets/lottie/preparing.json
  String get preparing => 'assets/lottie/preparing.json';

  /// List of all assets
  List<String> get values => [
        cancelled,
        delivered,
        emptyCart,
        loading,
        outForDelivery,
        pending,
        preparing
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
