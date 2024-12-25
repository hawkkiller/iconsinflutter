import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';

void main() {
  test('svg_icons assets test', () {
    expect(File(SvgIcons.add).existsSync(), isTrue);
    expect(File(SvgIcons.addTask).existsSync(), isTrue);
    expect(File(SvgIcons.appRegistration).existsSync(), isTrue);
    expect(File(SvgIcons.arrowBack).existsSync(), isTrue);
    expect(File(SvgIcons.arrowCircleDropUp).existsSync(), isTrue);
    expect(File(SvgIcons.arrowCircleLeft).existsSync(), isTrue);
    expect(File(SvgIcons.arrowCircleUp).existsSync(), isTrue);
    expect(File(SvgIcons.arrowLeft).existsSync(), isTrue);
    expect(File(SvgIcons.binFilledEvenodd).existsSync(), isTrue);
    expect(File(SvgIcons.binFilledNonzero).existsSync(), isTrue);
    expect(File(SvgIcons.cancel).existsSync(), isTrue);
    expect(File(SvgIcons.changeCircle).existsSync(), isTrue);
    expect(File(SvgIcons.close).existsSync(), isTrue);
    expect(File(SvgIcons.compareArrows).existsSync(), isTrue);
    expect(File(SvgIcons.dataset).existsSync(), isTrue);
    expect(File(SvgIcons.delete).existsSync(), isTrue);
    expect(File(SvgIcons.disabledByDefault).existsSync(), isTrue);
    expect(File(SvgIcons.doneOutline).existsSync(), isTrue);
    expect(File(SvgIcons.downloadForOffline).existsSync(), isTrue);
    expect(File(SvgIcons.downloading).existsSync(), isTrue);
    expect(File(SvgIcons.dragIndicator).existsSync(), isTrue);
    expect(File(SvgIcons.exitToApp).existsSync(), isTrue);
    expect(File(SvgIcons.forward).existsSync(), isTrue);
    expect(File(SvgIcons.fullscreen).existsSync(), isTrue);
    expect(File(SvgIcons.fullscreenExit).existsSync(), isTrue);
    expect(File(SvgIcons.home).existsSync(), isTrue);
    expect(File(SvgIcons.html).existsSync(), isTrue);
    expect(File(SvgIcons.iosShare).existsSync(), isTrue);
    expect(File(SvgIcons.keyboardDoubleArrowDown).existsSync(), isTrue);
    expect(File(SvgIcons.keyboardDoubleArrowLeft).existsSync(), isTrue);
    expect(File(SvgIcons.menu).existsSync(), isTrue);
    expect(File(SvgIcons.openWith).existsSync(), isTrue);
    expect(File(SvgIcons.pants).existsSync(), isTrue);
    expect(File(SvgIcons.redo).existsSync(), isTrue);
    expect(File(SvgIcons.reply).existsSync(), isTrue);
    expect(File(SvgIcons.search).existsSync(), isTrue);
    expect(File(SvgIcons.selectCheckBox).existsSync(), isTrue);
    expect(File(SvgIcons.settings).existsSync(), isTrue);
    expect(File(SvgIcons.settingsAccessibility).existsSync(), isTrue);
    expect(File(SvgIcons.settingsApplications).existsSync(), isTrue);
    expect(File(SvgIcons.star).existsSync(), isTrue);
    expect(File(SvgIcons.start).existsSync(), isTrue);
    expect(File(SvgIcons.swapHoriz).existsSync(), isTrue);
    expect(File(SvgIcons.switchAccessShortcut).existsSync(), isTrue);
    expect(File(SvgIcons.terminal).existsSync(), isTrue);
    expect(File(SvgIcons.token).existsSync(), isTrue);
    expect(File(SvgIcons.transformations).existsSync(), isTrue);
    expect(File(SvgIcons.unfoldMore).existsSync(), isTrue);
    expect(File(SvgIcons.zoomIn).existsSync(), isTrue);
  });
}
