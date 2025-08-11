import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CustomCacheManager extends CacheManager {
  static const key = 'customImagesCache';

  static final instance = CustomCacheManager._internal();

  factory CustomCacheManager() {
    return instance;
  }

  CustomCacheManager._internal()
      : super(
          Config(
            key,
            stalePeriod: const Duration(days: 1),
            maxNrOfCacheObjects: 60,
            repo: CacheObjectProvider(
              databaseName: key,
            ),
          ),
        );
}
