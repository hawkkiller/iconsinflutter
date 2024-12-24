import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:iconsinflutter/src/constant/resources/resources.dart';

void main() {
  test('svg_icons assets test', () {
    expect(File(SvgIcons.add).existsSync(), isTrue);
    expect(File(SvgIcons.arrowBack).existsSync(), isTrue);
    expect(File(SvgIcons.binFilledEvenodd).existsSync(), isTrue);
    expect(File(SvgIcons.binFilledNonzero).existsSync(), isTrue);
    expect(File(SvgIcons.cancel).existsSync(), isTrue);
    expect(File(SvgIcons.close).existsSync(), isTrue);
    expect(File(SvgIcons.delete).existsSync(), isTrue);
    expect(File(SvgIcons.home).existsSync(), isTrue);
    expect(File(SvgIcons.menu).existsSync(), isTrue);
    expect(File(SvgIcons.pants).existsSync(), isTrue);
    expect(File(SvgIcons.search).existsSync(), isTrue);
    expect(File(SvgIcons.settings).existsSync(), isTrue);
    expect(File(SvgIcons.star).existsSync(), isTrue);
    expect(File(SvgIcons.transformations).existsSync(), isTrue);
  });
}
