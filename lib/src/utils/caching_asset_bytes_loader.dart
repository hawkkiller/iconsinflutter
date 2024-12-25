import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:vector_graphics/vector_graphics.dart';

class CachingAssetBytesLoader extends AssetBytesLoader {
  const CachingAssetBytesLoader(
    super.assetName, {
    super.packageName,
    super.assetBundle,
  });

  static final Map<String, Future<ByteData>> _pendingCache = {};
  static final Map<String, ByteData> _cache = {};

  @override
  Future<ByteData> loadBytes(BuildContext? context) {
    final key = packageName == null ? assetName : 'packages/$packageName/$assetName';

    if (_cache.containsKey(key)) {
      return SynchronousFuture(_cache[key]!);
    }

    if (_pendingCache.containsKey(key)) {
      return _pendingCache[key]!;
    }

    final future = super.loadBytes(context);

    _pendingCache[key] = future;

    return future.then((data) {
      _cache[key] = data;

      return data;
    }).whenComplete(() {
      _pendingCache.remove(key);
    });
  }
}
