import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../styles/styles.dart';
import '../../styles/transitions/slide-transitions.dart';
import '../../widgets/round-buttons.dart';
import '../auth/sign-in.dart';
import '../auth/sign-up.dart';

class FirstScreen extends StatefulWidget {
  final User user;
  const FirstScreen({Key key, this.user}) : super(key: key);
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    width: screenWidth(context) * 0.5,
                    child: Image.asset(
                      "lib/assets/imgs/curve.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: screenWidth(context) * 0.5,
                    child: Image.asset(
                      "lib/assets/imgs/img.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 35.0,
                child: Container(
                  alignment: AlignmentDirectional.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context, SlideRightRoute(page: SignIn()));
                        },
                        child: HalfRoundButton(
                            title: "SIGN IN",
                            color1: primaryDark,
                            color2: primaryLight,
                            left: "yes"),
                      ),
                      Container(
                        width: 0.2,
                        height: 50.0,
                        color: Colors.white,
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context, SlideLeftRoute(page: SignUp()));
                        },
                        child: HalfRoundButton(
                            title: "SIGN UP",
                            color1: primaryLight,
                            color2: primaryDark,
                            left: "no"),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Image.asset(
            "lib/assets/imgs/centerLogo.png",
            width: 230.0,
            height: 260.0,
          ),
        ],
      ),
    );
  }
}
