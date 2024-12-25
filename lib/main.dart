import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsinflutter/src/constant/icons/app_icons.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';
import 'package:iconsinflutter/src/utils/caching_asset_bytes_loader.dart';
import 'package:iconsinflutter/src/widget/app_icon.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final stopwatch = Stopwatch()..start();
  for (final icon in SvgIconsPreview._assets) {
    await SvgAssetLoader(icon).loadBytes(null);
  }
  stopwatch.stop();
  print('Loaded ${SvgIconsPreview._assets.length} SVG icons in ${stopwatch.elapsedMilliseconds}ms');

  final stopwatch2 = Stopwatch()..start();
  for (final icon in VectorGraphicsPreview._assets) {
    await CachingAssetBytesLoader(icon).loadBytes(null);
  }
  stopwatch2.stop();
  print(
    'Loaded ${VectorGraphicsPreview._assets.length} vector graphics in ${stopwatch2.elapsedMilliseconds}ms',
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const IconfontGeneratorPreview(),
              const SizedBox(width: 16),
              const VectorGraphicsPreview(),
              const SizedBox(width: 16),
              const SvgIconsPreview(),
            ],
          ),
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
    AppIcons.appRegistration,
    AppIcons.exitToApp,
    AppIcons.start,
    AppIcons.redo,
    AppIcons.arrowCircleUp,
    AppIcons.downloadForOffline,
    AppIcons.unfoldMore,
    AppIcons.selectCheckBox,
    AppIcons.fullscreenExit,
    AppIcons.switchAccessShortcut,
    AppIcons.iosShare,
    AppIcons.html,
    AppIcons.forward,
    AppIcons.openWith,
    AppIcons.keyboardDoubleArrowDown,
    AppIcons.arrowCircleDropUp,
    AppIcons.settingsApplications,
  ];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          for (final asset in _assets)
            AppIcon.iconData(
              asset,
              size: AppIconSize.large,
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
    Vectors.appRegistrationSvg,
    Vectors.exitToAppSvg,
    Vectors.startSvg,
    Vectors.redoSvg,
    Vectors.arrowCircleUpSvg,
    Vectors.downloadForOfflineSvg,
    Vectors.unfoldMoreSvg,
    Vectors.selectCheckBoxSvg,
    Vectors.fullscreenExitSvg,
    Vectors.switchAccessShortcutSvg,
    Vectors.iosShareSvg,
    Vectors.htmlSvg,
    Vectors.forwardSvg,
    Vectors.openWithSvg,
    Vectors.keyboardDoubleArrowDownSvg,
    Vectors.arrowCircleDropUpSvg,
    Vectors.settingsApplicationsSvg,
  ];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          for (final asset in _assets)
            AppIcon.vectorGraphics(
              asset,
              size: AppIconSize.large,
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
    SvgIcons.binFilledEvenodd,
    SvgIcons.binFilledNonzero,
    SvgIcons.transformations,
    SvgIcons.pants,
    SvgIcons.appRegistration,
    SvgIcons.exitToApp,
    SvgIcons.start,
    SvgIcons.redo,
    SvgIcons.arrowCircleUp,
    SvgIcons.downloadForOffline,
    SvgIcons.unfoldMore,
    SvgIcons.selectCheckBox,
    SvgIcons.fullscreenExit,
    SvgIcons.switchAccessShortcut,
    SvgIcons.iosShare,
    SvgIcons.html,
    SvgIcons.forward,
    SvgIcons.openWith,
    SvgIcons.keyboardDoubleArrowDown,
    SvgIcons.arrowCircleDropUp,
    SvgIcons.settingsApplications,
  ];

  @override
  Widget build(BuildContext context) => Column(
        children: [
          for (final asset in _assets)
            AppIcon.svg(
              asset,
              size: AppIconSize.large,
              key: ValueKey(asset),
            ),
        ],
      );
}
