import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Class to handle local storage securely using `FlutterSecureStorage`
class LocalStorage {
  /// Instance of secure storage
  final FlutterSecureStorage storage = FlutterSecureStorage();

  /// Stores a key-value pair securely
  /// Returns `true` if the operation is successful
  Future<bool> setValue(String key, String value) async {
    try {
      await storage.write(key: key, value: value);
      return true;
    } catch (e) {
      return false; // Return false in case of an error
    }
  }

  /// Reads a value from secure storage by key
  /// Returns `null` if the key does not exist
  Future<String?> readValue(String key) async {
    try {
      return await storage.read(key: key);
    } catch (e) {
      return null;
    }
  }

  /// Deletes a key from secure storage
  /// Returns `true` if the operation is successful
  Future<bool> deleteValue(String key) async {
    try {
      await storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }
}
