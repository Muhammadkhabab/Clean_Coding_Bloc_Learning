import 'package:clean_coding_project/dependency_injection/locator.dart';
import 'package:flutter/material.dart';
import 'config/routes/routes.dart';
import 'config/routes/routes_name.dart';
import 'config/theme/app_theme.dart';

///[Dependency] Injector global define
ServiceLocator dependencyInjector = ServiceLocator();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  dependencyInjector.serviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Code With Bloc',
      theme: AppTheme.themeData,
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute, // Generating routes,
    );
  }
}
