import 'package:akkelny/screens/auth_screen.dart';
import 'package:akkelny/screens/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ignore: non_constant_identifier_names
  final check_intro = await checkIntro();
  runApp(MyApp(check_intro));
}

class MyApp extends StatelessWidget {
  final checkIntro;
  MyApp(this.checkIntro);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: checkIntro ? AuthScreen() : IntroPage(),
        routes: {AuthScreen.routeName: (context) => AuthScreen()});
  }
}

Future<bool> checkIntro() async {
  final shared = await SharedPreferences.getInstance();
  final isDone = shared.getBool("intro");
  if (isDone != null) {
    return isDone;
  }
  return false;
}
