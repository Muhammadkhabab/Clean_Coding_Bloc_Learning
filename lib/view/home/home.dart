import 'package:clean_coding_project/config/routes/routes_name.dart';
import 'package:clean_coding_project/services/session_manager/session_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
            onPressed: () {
              _logout(context);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Icon(Icons.home),
          Text('Home Screen'),
          Container(
            decoration: BoxDecoration(color: Colors.red),
            child: Text('data'),
          ),
        ],
      ),
    );
  }

  /// Logs the user_bloc out and redirects to the login screen.
  void _logout(BuildContext context) async {
    await SessionController().clearSession();

    /// Navigate to login screen and remove all previous screens from stack
    Navigator.pushNamed(context, RoutesName.login);
  }
}
