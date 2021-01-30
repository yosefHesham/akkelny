import 'package:akkelny/public.dart';
import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';

class WelcomePage extends StatelessWidget {
  final mainText;
  WelcomePage(this.mainText);
  @override
  Widget build(BuildContext context) {
    var responsive = MediaQuery.of(context).size;
    return Column(
      children: [
        arcBuilder(responsive),
        SizedBox(
          height: 20,
        ),
        Text(
          mainText,
          style: TextStyle(
              color: welcomeTextColor,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        Expanded(flex: 2, child: textWelcome()),
      ],
    );
  }

  Widget arcBuilder(Size responsive) {
    return ShapeOfView(
        height: responsive.height * .5,
        clipBehavior: Clip.hardEdge,
        shape: ArcShape(
            height: 40,
            direction: ArcDirection.Outside,
            position: ArcPosition.Bottom),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [firstColor, secondColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ));
  }

  Widget textWelcome() {
    return Container(
      child: Text(
        welcomeText,
        textAlign: TextAlign.center,
        style: TextStyle(color: Color(0xf5b5858).withOpacity(1), fontSize: 25),
        softWrap: true,
      ),
    );
  }
}
