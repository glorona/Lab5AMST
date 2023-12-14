import 'package:flutter/material.dart';
import 'package:app_flutter_db4/shared/nav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(apiKey: 'AIzaSyDIiZEZOsIpCS2IFN-4xxv8XhZJksWJDYc',
      appId: '1:44502753426:web:639abcd4fed66ac044064b',
      messagingSenderId: '44502753426',
      projectId: 'amst-flutter-db-4',
      authDomain: 'amst-flutter-db-4.firebaseapp.com',
      databaseURL: 'https://amst-flutter-db-4-default-rtdb.firebaseio.com',
      storageBucket: 'amst-flutter-db-4.appspot.com',
      measurementId: 'G-W5L32P1GBR',)
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
  new GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vacheck',
      navigatorKey: navigatorKey,
      initialRoute:'nav',
      routes:{
        'nav': (context) => Nav(),
      },
      theme: ThemeData(
        primaryColor: Colors.red[400],
      ),
    );
  }
}