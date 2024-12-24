import 'package:flutter/services.dart';

/// [AssetBundle] that caches binary data.
final vecAssetBundle = VecAssetBundle();

/// [AssetBundle] that caches binary data.
/// 
/// It is recommended to use if to load vector graphics assets.
class VecAssetBundle extends PlatformAssetBundle {
  final _binaryLoadCache = <String, Future<ByteData>>{};

  @override
  Future<ByteData> load(String key, {bool cache = true}) {
    if (cache) {
      return _binaryLoadCache.putIfAbsent(key, () => super.load(key));
    }

    return super.load(key);
  }
}
