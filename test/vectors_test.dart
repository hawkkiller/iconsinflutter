import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';

void main() {
  test('vectors assets test', () {
    expect(File(Vectors.addSvg).existsSync(), isTrue);
    expect(File(Vectors.arrowBackSvg).existsSync(), isTrue);
    expect(File(Vectors.binFilledEvenoddSvg).existsSync(), isTrue);
    expect(File(Vectors.binFilledNonzeroSvg).existsSync(), isTrue);
    expect(File(Vectors.cancelSvg).existsSync(), isTrue);
    expect(File(Vectors.closeSvg).existsSync(), isTrue);
    expect(File(Vectors.deleteSvg).existsSync(), isTrue);
    expect(File(Vectors.homeSvg).existsSync(), isTrue);
    expect(File(Vectors.menuSvg).existsSync(), isTrue);
    expect(File(Vectors.pantsSvg).existsSync(), isTrue);
    expect(File(Vectors.searchSvg).existsSync(), isTrue);
    expect(File(Vectors.settingsSvg).existsSync(), isTrue);
    expect(File(Vectors.starSvg).existsSync(), isTrue);
    expect(File(Vectors.transformationsSvg).existsSync(), isTrue);
  });
}
