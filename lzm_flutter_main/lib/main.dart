import 'package:flutter/material.dart';
import '../tab/simple_widget.dart';
import 'package:flutter_boost/flutter_boost.dart';

void main() {
  CustomFlutterBinding();
  runApp(MyApp());
}

class CustomFlutterBinding extends WidgetsFlutterBinding
    with BoostFlutterBinding {}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Map<String, FlutterBoostRouteFactory> routerMap = {
    'tab_friend': (settings, uniqueId) {
      return PageRouteBuilder<dynamic>(
          settings: settings,
          pageBuilder: (_, __, ___) => SimpleWidget(
              uniqueId, settings.arguments, "This is a flutter fragment"));
    },
  };

  Route<dynamic> routeFactory(RouteSettings settings, String uniqueId) {
    FlutterBoostRouteFactory func = routerMap[settings.name];
    if (func == null) {
      return null;
    }
    return func(settings, uniqueId);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterBoostApp(routeFactory, interceptors: [
    ]);
  }
}