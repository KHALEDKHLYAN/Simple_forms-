// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/widgets/customscaffold_widget.dart';
import 'package:ecommerce_app/widgets/welcom_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Customscaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8,
              child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 40.0,
            ),
            child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Welcome Back!\n',
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text:
                              '\nEnter personal details to your employee account',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ]))),
          )),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  Expanded(
                    child: WelcomeButton(buttunText: 'Sign in',),
                  ),
                  Expanded(
                    child: WelcomeButton(buttunText: 'sign up',),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
