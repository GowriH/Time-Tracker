import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter_course/common_widgets/custom_raised_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInPage extends StatelessWidget {

  void _signInAnonymously() async {
    final authResult = await FirebaseAuth.instance.signInAnonymously();
    print('${authResult.user.uid}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Time Tracker'),
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[300],
    );
  }

  Widget _buildContent() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          SignInButton(
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('images/images/google-logo.png'),
                Text (
                  'Sign in with Google!',
                  style: TextStyle(color: Colors.black, fontSize: 24.0),
                ),
                Opacity (
                  opacity: 0.0,
                  child: Image.asset('images/images/google-logo.png'),
                ),
              ],
            ),
            color: Colors.white,
            onPressed: () {
              print('click');
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            child: Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('images/images/facebook-logo.png'),
                Text (
                  'Sign in with Facebook!',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                Opacity (
                  opacity: 0.0,
                  child: Image.asset('images/images/google-logo.png'),
                ),
              ],
            ),
            color: Colors.indigo[800],
            onPressed: () {
              print('click');
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            child: Text (
              'Sign in with Email!',
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            color: Colors.green[900],
            onPressed: () {
              print('click');
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'or',
            style: TextStyle(fontSize: 18.0, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            child: Text(
                'Go Anonymous!',
                style: TextStyle(color: Colors.white, fontSize: 24.0)
            ),
            color: Colors.lime[800],
            onPressed: () {
              _signInAnonymously();
            },
          ),
        ],
      ),
    );
  }
}
