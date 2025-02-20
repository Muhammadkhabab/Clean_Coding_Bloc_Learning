import 'dart:async';
import 'package:clean_coding_project/services/session_manager/session_controller.dart';
import 'package:flutter/cupertino.dart';
import '../../config/routes/routes_name.dart';

/// Handles app startup logic to determine user authentication state
class SplashServices {
  /// Ensures session is loaded before navigating to the appropriate screen.
  Future<void> checkAuthentication(BuildContext context) async {
    await SessionController()
        .getUserFromPreference(); // Wait for session data to load

    if (SessionController.isLogin) {
      // Navigate to Home if logged in
      Timer(
        const Duration(seconds: 2),
        () => Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesName.home,
          (route) => false,
        ),
      );
    } else {
      // Navigate to Login if not logged in
      Timer(
        const Duration(seconds: 2),
        () => Navigator.pushNamedAndRemoveUntil(
          context,
          RoutesName.login,
          (route) => false,
        ),
      );
    }
  }
}
