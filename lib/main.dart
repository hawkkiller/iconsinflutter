import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconsinflutter/src/constant/icons/app_icons.dart';
import 'package:iconsinflutter/src/constant/icons/icomoon_icons.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';
import 'package:iconsinflutter/src/widget/app_icon.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            IconfontGeneratorPreview(),
            Divider(),
            // IconfontIcomoonPreview(),
            // Divider(),
            VectorGraphicsPreview(),
            Divider(),
            SvgIconsPreview(),
          ],
        ),
      ),
    );
  }
}

class IconfontGeneratorPreview extends StatelessWidget {
  const IconfontGeneratorPreview({super.key});

  static const _assets = [
    AppIcons.add,
    AppIcons.arrowBack,
    AppIcons.cancel,
    AppIcons.close,
    AppIcons.delete,
    AppIcons.home,
    AppIcons.menu,
    AppIcons.search,
    AppIcons.settings,
    AppIcons.star,
    AppIcons.binfillednonzero,
    AppIcons.binfilledevenodd,
    AppIcons.transformations,
    AppIcons.pants,
  ];

  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final asset in _assets)
            AppIcon.iconData(
              asset,
              size: AppIconSize.medium,
              key: ValueKey(asset),
            ),
            // RichText(
            //   text: TextSpan(
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 48,
            //       inherit: false,
            //       fontFamily: asset.fontFamily,
            //       package: asset.fontPackage,
            //     ),
            //     text: String.fromCharCode(asset.codePoint),
            //   ),
            // )
        ],
      );
}

class IconfontIcomoonPreview extends StatelessWidget {
  const IconfontIcomoonPreview({super.key});

  static const _assets = [
    Icomoon.star,
    Icomoon.add,
    Icomoon.arrowBack,
    Icomoon.settings,
    Icomoon.cancel,
    Icomoon.close,
    Icomoon.delete,
    Icomoon.menu,
    Icomoon.home,
    Icomoon.search,
  ];

  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final asset in _assets)
            ImageFiltered(
              imageFilter: ImageFilter.matrix(Matrix4.identity().storage),
              child: AppIcon.iconData(
                asset,
                size: AppIconSize.medium,
                key: ValueKey(asset),
              ),
            ),
        ],
      );
}

class VectorGraphicsPreview extends StatelessWidget {
  const VectorGraphicsPreview({super.key});

  static const _assets = [
    Vectors.addSvg,
    Vectors.arrowBackSvg,
    Vectors.cancelSvg,
    Vectors.closeSvg,
    Vectors.deleteSvg,
    Vectors.homeSvg,
    Vectors.menuSvg,
    Vectors.searchSvg,
    Vectors.settingsSvg,
    Vectors.starSvg,
    Vectors.binFilledNonzeroSvg,
    Vectors.binFilledEvenoddSvg,
    Vectors.transformationsSvg,
    Vectors.pantsSvg,
  ];

  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final asset in _assets)
            AppIcon.vectorGraphics(
              asset,
              size: AppIconSize.medium,
              key: ValueKey(asset),
            ),
        ],
      );
}

class SvgIconsPreview extends StatelessWidget {
  const SvgIconsPreview({super.key});

  static const _assets = [
    SvgIcons.add,
    SvgIcons.arrowBack,
    SvgIcons.cancel,
    SvgIcons.close,
    SvgIcons.delete,
    SvgIcons.home,
    SvgIcons.menu,
    SvgIcons.search,
    SvgIcons.settings,
    SvgIcons.star,
    SvgIcons.binFilledNonzero,
    SvgIcons.binFilledEvenodd,
    SvgIcons.transformations,
    SvgIcons.pants,
  ];

  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 8,
        runSpacing: 8,
        children: [
          for (final asset in _assets)
            AppIcon.svg(
              asset,
              size: AppIconSize.medium,
              key: ValueKey(asset),
            ),
        ],
      );
}
