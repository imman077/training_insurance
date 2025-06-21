import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Provider for FlutterSecureStorage instance
final secureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  AndroidOptions getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  return FlutterSecureStorage(
    aOptions: getAndroidOptions(),
  );
});

/// Global cache provider for state persistence
final riverpodCacheProvider = StateProvider<Map<String, dynamic>>((ref) => {});

/// A utility class for hydrating Riverpod providers using both in-memory cache and secure storage
class HydratedRiverpod {
  /// Load state from cache and secure storage
  static T? loadStateSync<T>({
    required Ref ref,
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
  }) {
    try {
      // First check in-memory cache
      final cache = ref.read(riverpodCacheProvider);
      if (cache.containsKey(key)) {
        final jsonValue = cache[key] as Map<String, dynamic>;
        final loadedState = fromJson(jsonValue);

        if (kDebugMode) {
          // print("State successfully loaded from memory cache for key: $key");
        }

        return loadedState;
      }

      // If not in memory, schedule loading from secure storage
      Future.microtask(() => _loadFromSecureStorage<T>(ref: ref, key: key, fromJson: fromJson));
    } catch (e) {
      if (kDebugMode) {
        print("Error loading state from memory for key: $key, error: $e");
      }
    }
    return null;
  }

  /// Load state from secure storage and update cache
  static Future<T?> _loadFromSecureStorage<T>({
    required Ref ref,
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
  }) async {
    try {
      final storage = ref.read(secureStorageProvider);
      final value = await storage.read(key: key);

      if (value != null) {
        Map<String, dynamic> jsonValue = json.decode(value);
        final loadedState = fromJson(jsonValue);

        // Update in-memory cache
        ref.read(riverpodCacheProvider.notifier).update((state) => {
              ...state,
              key: jsonValue,
            });

        if (kDebugMode) {
          // print("State successfully loaded from secure storage for key: $key");
        }

        return loadedState;
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error loading state from secure storage for key: $key, error: $e");
      }
    }
    return null;
  }

  /// Load state asynchronously from both cache and secure storage
  static Future<T?> loadState<T>({
    required Ref ref,
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
  }) async {
    // First try memory cache
    final memoryState = loadStateSync(ref: ref, key: key, fromJson: fromJson);
    if (memoryState != null) {
      return memoryState;
    }

    // Then try secure storage
    return _loadFromSecureStorage(ref: ref, key: key, fromJson: fromJson);
  }

  /// Save state to both cache and secure storage
  static void saveState<T>({
    required Ref ref,
    required String key,
    required T state,
    required Map<String, dynamic> Function(T state) toJson,
  }) {
    try {
      final jsonData = toJson(state);

      // Save to in-memory cache
      ref.read(riverpodCacheProvider.notifier).update((state) => {
            ...state,
            key: jsonData,
          });

      // Save to secure storage
      _saveToSecureStorage(ref: ref, key: key, jsonData: jsonData);

      if (kDebugMode) {
        // print("State successfully saved for key: $key");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error saving state for key: $key, error: $e");
      }
    }
  }

  /// Save to secure storage asynchronously
  static Future<void> _saveToSecureStorage({required Ref ref, required String key, required Map<String, dynamic> jsonData}) async {
    try {
      final storage = ref.read(secureStorageProvider);
      final encodedData = json.encode(jsonData);
      await storage.write(key: key, value: encodedData);

      if (kDebugMode) {
        // print("State successfully saved to secure storage for key: $key");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error saving state to secure storage for key: $key, error: $e");
      }
    }
  }

  /// Clear state from both cache and secure storage
  static void clearState({
    required Ref ref,
    required String key,
  }) {
    try {
      // Clear from in-memory cache
      ref.read(riverpodCacheProvider.notifier).update((state) => {
            ...state,
            key: null,
          });

      // Clear from secure storage
      _clearFromSecureStorage(ref: ref, key: key);

      if (kDebugMode) {
        // print("State successfully cleared for key: $key");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error clearing state for key: $key, error: $e");
      }
    }
  }

  /// Clear from secure storage asynchronously
  static Future<void> _clearFromSecureStorage({required Ref ref, required String key}) async {
    try {
      final storage = ref.read(secureStorageProvider);
      await storage.delete(key: key);

      if (kDebugMode) {
        // print("State successfully cleared from secure storage for key: $key");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error clearing state from secure storage for key: $key, error: $e");
      }
    }
  }

  /// Clear all hydrated data from both cache and secure storage
  static Future<void> clearAllData({required Ref ref}) async {
    try {
      // Clear all data from in-memory cache
      ref.read(riverpodCacheProvider.notifier).state = {};

      // Clear all data from secure storage
      final storage = ref.read(secureStorageProvider);
      await storage.deleteAll();

      if (kDebugMode) {
        print("All hydrated data successfully cleared");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Error clearing all hydrated data: $e");
      }
    }
  }
}

/// A mixin for adding hydration capabilities to Riverpod 2.0 notifiers
mixin HydratedNotifierMixin<T> on AutoDisposeNotifier<T> {
  /// Storage key for this notifier
  String get storageKey;

  /// Convert state to JSON
  Map<String, dynamic> Function(T state) get toJson;

  /// Create state from JSON
  T Function(Map<String, dynamic> json) get fromJson;

  /// Load state from storage
  Future<void> loadState() async {
    final loadedState = await HydratedRiverpod.loadState<T>(
      ref: ref,
      key: storageKey,
      fromJson: fromJson,
    );

    if (loadedState != null) {
      state = loadedState;
    }
  }

  /// Save state to storage
  void saveState() {
    HydratedRiverpod.saveState<T>(
      ref: ref,
      key: storageKey,
      state: state,
      toJson: toJson,
    );
  }

  /// Clear state from storage
  void clearState(T defaultState) {
    HydratedRiverpod.clearState(
      ref: ref,
      key: storageKey,
    );
    state = defaultState;
  }
}

/// A mixin for adding hydration capabilities to Riverpod 2.0 notifiers with keepAlive
mixin HydratedApp<T> on Notifier<T> {
  /// The class name for the model, used to construct the storage key
  /// By default, it uses the runtime type of the notifier class and removes 'Notifier' suffix
  String get modelName {
    final className = runtimeType.toString();
    if (className.endsWith('Notifier')) {
      return className.substring(0, className.length - 8).toLowerCase();
    }
    return className.toLowerCase();
  }

  /// Default implementation of storage key based on model name
  String get storageKey => '${modelName}_state';

  /// Default implementation for toJson that works with Freezed models
  Map<String, dynamic> Function(T state) get toJson => (state) => (state as dynamic).toJson() as Map<String, dynamic>;

  /// Class type for the model, derived from the generic type parameter
  Type get modelType => T;

  /// Default implementation for fromJson that works with Freezed models
  /// This can be overridden if needed, but by default it will try to use the static fromJson method
  /// on the model class based on the modelType
  T Function(Map<String, dynamic> json) get fromJson {
    // This is a fallback that requires explicit implementation
    throw UnimplementedError('You must override the fromJson getter in your class that uses HydratedAppi.\n'
        'For example: @override\n'
        'YourModel Function(Map<String, dynamic> json) get fromJson => YourModel.fromJson;');
  }

  /// Load state from storage
  Future<void> loadState() async {
    final loadedState = await HydratedRiverpod.loadState<T>(
      ref: ref,
      key: storageKey,
      fromJson: fromJson,
    );

    if (loadedState != null && loadedState != state) {
      state = loadedState;
      if (kDebugMode) {
        // print("State updated from storage for key: $storageKey");
      }
    }
  }

  /// Save state to storage
  void saveState() {
    HydratedRiverpod.saveState<T>(
      ref: ref,
      key: storageKey,
      state: state,
      toJson: toJson,
    );
  }

  /// Clear state from storage
  void clearState(T defaultState) {
    HydratedRiverpod.clearState(
      ref: ref,
      key: storageKey,
    );
    state = defaultState;
  }
}
