import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';

void main() {
  test('vectors assets test', () {
    expect(File(Vectors.addSvg).existsSync(), isTrue);
    expect(File(Vectors.addTaskSvg).existsSync(), isTrue);
    expect(File(Vectors.appRegistrationSvg).existsSync(), isTrue);
    expect(File(Vectors.arrowBackSvg).existsSync(), isTrue);
    expect(File(Vectors.arrowCircleDropUpSvg).existsSync(), isTrue);
    expect(File(Vectors.arrowCircleLeftSvg).existsSync(), isTrue);
    expect(File(Vectors.arrowCircleUpSvg).existsSync(), isTrue);
    expect(File(Vectors.arrowLeftSvg).existsSync(), isTrue);
    expect(File(Vectors.binFilledEvenoddSvg).existsSync(), isTrue);
    expect(File(Vectors.binFilledNonzeroSvg).existsSync(), isTrue);
    expect(File(Vectors.cancelSvg).existsSync(), isTrue);
    expect(File(Vectors.changeCircleSvg).existsSync(), isTrue);
    expect(File(Vectors.closeSvg).existsSync(), isTrue);
    expect(File(Vectors.compareArrowsSvg).existsSync(), isTrue);
    expect(File(Vectors.datasetSvg).existsSync(), isTrue);
    expect(File(Vectors.deleteSvg).existsSync(), isTrue);
    expect(File(Vectors.disabledByDefaultSvg).existsSync(), isTrue);
    expect(File(Vectors.doneOutlineSvg).existsSync(), isTrue);
    expect(File(Vectors.downloadForOfflineSvg).existsSync(), isTrue);
    expect(File(Vectors.downloadingSvg).existsSync(), isTrue);
    expect(File(Vectors.dragIndicatorSvg).existsSync(), isTrue);
    expect(File(Vectors.exitToAppSvg).existsSync(), isTrue);
    expect(File(Vectors.forwardSvg).existsSync(), isTrue);
    expect(File(Vectors.fullscreenSvg).existsSync(), isTrue);
    expect(File(Vectors.fullscreenExitSvg).existsSync(), isTrue);
    expect(File(Vectors.homeSvg).existsSync(), isTrue);
    expect(File(Vectors.htmlSvg).existsSync(), isTrue);
    expect(File(Vectors.iosShareSvg).existsSync(), isTrue);
    expect(File(Vectors.keyboardDoubleArrowDownSvg).existsSync(), isTrue);
    expect(File(Vectors.keyboardDoubleArrowLeftSvg).existsSync(), isTrue);
    expect(File(Vectors.menuSvg).existsSync(), isTrue);
    expect(File(Vectors.openWithSvg).existsSync(), isTrue);
    expect(File(Vectors.pantsSvg).existsSync(), isTrue);
    expect(File(Vectors.redoSvg).existsSync(), isTrue);
    expect(File(Vectors.replySvg).existsSync(), isTrue);
    expect(File(Vectors.searchSvg).existsSync(), isTrue);
    expect(File(Vectors.selectCheckBoxSvg).existsSync(), isTrue);
    expect(File(Vectors.settingsSvg).existsSync(), isTrue);
    expect(File(Vectors.settingsAccessibilitySvg).existsSync(), isTrue);
    expect(File(Vectors.settingsApplicationsSvg).existsSync(), isTrue);
    expect(File(Vectors.starSvg).existsSync(), isTrue);
    expect(File(Vectors.startSvg).existsSync(), isTrue);
    expect(File(Vectors.swapHorizSvg).existsSync(), isTrue);
    expect(File(Vectors.switchAccessShortcutSvg).existsSync(), isTrue);
    expect(File(Vectors.terminalSvg).existsSync(), isTrue);
    expect(File(Vectors.tokenSvg).existsSync(), isTrue);
    expect(File(Vectors.transformationsSvg).existsSync(), isTrue);
    expect(File(Vectors.unfoldMoreSvg).existsSync(), isTrue);
    expect(File(Vectors.zoomInSvg).existsSync(), isTrue);
  });
}
