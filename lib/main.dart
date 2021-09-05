import 'package:ui_welcome_login_screen/signin_screen.dart';
import 'package:ui_welcome_login_screen/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Screen 01',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: primaryColor,
          scaffoldBackgroundColor: bgColor,
          textTheme: TextTheme(
              headline4: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              button: TextStyle(color: Colors.white),
              headline5: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  fontStyle: FontStyle.italic)),
          inputDecorationTheme: InputDecorationTheme(
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.white.withOpacity(.2))))),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/wp-spider01.jpg'), fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          Expanded(flex: 3, child: Container()),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Spiderman SuperClub\n",
                        style: Theme.of(context).textTheme.headline4),
                    TextSpan(
                        text: '" Ready to face the multiverse "',
                        style: Theme.of(context).textTheme.headline5)
                  ])),
              FittedBox(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignInScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 25),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: primaryColor),
                  child: Row(
                    children: <Widget>[
                      Text("JOIN NOW",
                          style: Theme.of(context).textTheme.button),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  ),
                ),
              ))
            ],
          ))
        ],
      ),
    ));
  }
}
