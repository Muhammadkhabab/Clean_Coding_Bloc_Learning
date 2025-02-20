import 'dart:convert';
import 'package:clean_coding_project/model/user/user_model.dart';
import 'package:flutter/cupertino.dart';
import '../storage/local_storage.dart';

/// Manages user session, including login state and user data.
class SessionController {
  /// Instance of local storage class for session persistence
  final LocalStorage sharedPrefClass = LocalStorage();

  /// Singleton instance of [SessionController]
  static final SessionController _session = SessionController._internal();

  /// Holds the logged-in user details
  static UserModel user = UserModel();

  /// Flag to check if user is logged in
  static bool isLogin = false; // Default to false

  /// Private constructor to ensure only one instance is created
  SessionController._internal();

  /// Factory constructor to return the same instance
  factory SessionController() {
    return _session;
  }

  /// Saves user data and login status in local storage
  Future<void> saveUserPreference(dynamic user) async {
    try {
      // Store user data securely
      await sharedPrefClass.setValue('token', jsonEncode(user));

      // Store login status
      await sharedPrefClass.setValue('isLogin', 'true');
      isLogin = true; // Update session flag
    } catch (e) {
      debugPrint("Error saving user preference: ${e.toString()}");
    }
  }

  /// Retrieves user data and login status from local storage
  Future<void> getUserFromPreference() async {
    try {
      String? userData = await sharedPrefClass.readValue('token');
      String? isLoginData = await sharedPrefClass.readValue('isLogin');

      if (userData != null && userData.isNotEmpty) {
        try {
          SessionController.user = UserModel.fromJson(jsonDecode(userData));
        } catch (e) {
          debugPrint("Error decoding user data: ${e.toString()}");
          user = UserModel(); // Reset user data in case of an error
        }
      }

      // Check login status
      isLogin = isLoginData == 'true';
    } catch (e) {
      debugPrint("Error retrieving user preference: ${e.toString()}");
    }
  }

  /// Clears user session by deleting stored credentials
  Future<void> clearSession() async {
    try {
      await sharedPrefClass.deleteValue('token');
      await sharedPrefClass.deleteValue('isLogin');
      user = UserModel(); // Reset user data
      isLogin = false; // Set login status to false
    } catch (e) {
      debugPrint("Error clearing session: ${e.toString()}");
    }
  }
}
