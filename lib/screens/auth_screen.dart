import 'package:akkelny/public.dart';
import 'package:akkelny/widgets/auth_button.dart';
import 'package:akkelny/widgets/sm_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthScreen extends StatefulWidget {
  static const routeName = '/auth';
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: size.height * .1),
              Text(
                'Sign In ',
                style: TextStyle(
                    color: mainColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * .02),
              Text(
                'Or Continue With Your Social Netowrks',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.black54),
              ),
              SizedBox(height: size.height * .05),
              smAuth(),
              SizedBox(height: size.height * .05),
              buildForm(),
              SizedBox(
                height: size.height * .05,
              ),
              AuthButton("Sign Up", () => null),
              TextButton(
                  onPressed: () => null,
                  child: Text("Already registred! SignIn "))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "User Name",
                    suffixIcon: Icon(Icons.supervised_user_circle)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "mail", suffixIcon: Icon(Icons.mail)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Password", suffixIcon: Icon(Icons.lock)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget smAuth() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Spacer(),
      Expanded(flex: 3, child: SmButton(FontAwesomeIcons.facebook, "Facebook")),
      Spacer(),
      Expanded(flex: 3, child: SmButton(FontAwesomeIcons.google, "Google")),
      Spacer()
    ]);
  }
}
