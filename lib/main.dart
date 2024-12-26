import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsinflutter/src/constant/icons/app_icons.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';
import 'package:iconsinflutter/src/utils/caching_asset_bytes_loader.dart';
import 'package:iconsinflutter/src/widget/app_icon.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  for (final icon in SvgIcons.values) {
    await SvgAssetLoader(icon).loadBytes(null);
  }

  for (final icon in Vectors.values) {
    await CachingAssetBytesLoader(icon).loadBytes(null);
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconfontGeneratorPreview(),
                SizedBox(width: 16),
                VectorGraphicsPreview(),
                SizedBox(width: 16),
                SvgIconsPreview(),
              ],
            ),
          ),
        ),
      );
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

  @override
  Widget build(BuildContext context) => Column(
        children: [
          for (final asset in Vectors.values)
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

  @override
  Widget build(BuildContext context) => Column(
        children: [
          for (final asset in SvgIcons.values)
            AppIcon.svg(
              asset,
              size: AppIconSize.large,
              key: ValueKey(asset),
            ),
        ],
      );
}
