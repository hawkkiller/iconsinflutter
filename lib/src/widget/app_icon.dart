import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsinflutter/src/utils/vec_asset_bundle.dart';
import 'package:vector_graphics/vector_graphics.dart';

/// Icon that follows your guidelines for app icons.
class AppIcon extends StatelessWidget {
  const AppIcon._({
    required this.provider,
    super.key,
  });

  final AppIconProvider provider;

  /// Creates an icon from a vector graphics file.
  /// 
  /// The [path] should point to a .vec file.
  factory AppIcon.vectorGraphics(
    String path, {
    AppIconSize size = AppIconSize.medium,
    ColorFilter? colorFilter,
    String? semanticsLabel,
    Key? key,
  }) =>
      AppIcon._(
        key: key,
        provider: AppIconProviderVectorGraphics(
          path,
          size: size,
          colorFilter: colorFilter,
          semanticsLabel: semanticsLabel,
        ),
      );

  /// Creates an icon from an icon font.
  factory AppIcon.iconData(
    IconData iconData, {
    AppIconSize size = AppIconSize.medium,
    Color? color,
    String? semanticsLabel,
    Key? key,
  }) =>
      AppIcon._(
        key: key,
        provider: AppIconProviderIconfont(
          iconData,
          size: size,
          color: color,
          semanticsLabel: semanticsLabel,
        ),
      );

  /// Creates an icon from an SVG file.
  factory AppIcon.svg(
    String path, {
    AppIconSize size = AppIconSize.medium,
    ColorFilter? colorFilter,
    String? semanticsLabel,
    Key? key,
  }) =>
      AppIcon._(
        key: key,
        provider: AppIconProviderSvg(
          path,
          size: size,
          colorFilter: colorFilter,
          semanticsLabel: semanticsLabel,
        ),
      );

  @override
  Widget build(BuildContext context) => provider.buildIcon();
}

enum AppIconSize {
  small._(24),
  medium._(48),
  large._(64);

  final double value;

  const AppIconSize._(this.value);
}

sealed class AppIconProvider {
  const AppIconProvider();

  /// Returns an icon.
  Widget buildIcon();
}

final class AppIconProviderIconfont extends AppIconProvider {
  const AppIconProviderIconfont(
    this.iconData, {
    this.size = AppIconSize.medium,
    this.color,
    this.semanticsLabel,
  });

  final IconData iconData;
  final AppIconSize size;
  final String? semanticsLabel;
  final Color? color;

  @override
  Widget buildIcon() => Icon(
        iconData,
        size: size.value,
        color: color,
        semanticLabel: semanticsLabel,
        shadows: const [],
      );
}

final class AppIconProviderVectorGraphics extends AppIconProvider {
  const AppIconProviderVectorGraphics(
    this.path, {
    this.size = AppIconSize.medium,
    this.colorFilter,
    this.semanticsLabel,
  });

  final String path;
  final AppIconSize size;
  final ColorFilter? colorFilter;
  final String? semanticsLabel;

  @override
  Widget buildIcon() => VectorGraphic(
        loader: AssetBytesLoader(path, assetBundle: vecAssetBundle),
        colorFilter: colorFilter,
        width: size.value,
        height: size.value,
        semanticsLabel: semanticsLabel,
      );
}

final class AppIconProviderSvg extends AppIconProvider {
  const AppIconProviderSvg(
    this.path, {
    this.size = AppIconSize.medium,
    this.colorFilter,
    this.semanticsLabel,
  });

  final String path;
  final AppIconSize size;
  final ColorFilter? colorFilter;
  final String? semanticsLabel;

  @override
  Widget buildIcon() => SvgPicture.asset(
        path,
        bundle: vecAssetBundle,
        colorFilter: colorFilter,
        width: size.value,
        height: size.value,
        semanticsLabel: semanticsLabel,
      );
}
