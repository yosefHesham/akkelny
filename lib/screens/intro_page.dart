import 'package:akkelny/welcome_pages/welcome_page1-2.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    List<WelcomePage> _pages = [
      WelcomePage("Enter Your Address"),
      WelcomePage("Select Food Items"),
      WelcomePage("Delivery To Your Home")
    ];
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: _pages,
      ),
    );
  }
}
