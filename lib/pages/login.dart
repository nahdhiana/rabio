import 'package:flutter/material.dart';
import 'package:flutter_submission/pages/assets/AppBarAndNavBar.dart';
import 'package:flutter_submission/pages/forgotPassword.dart';
import 'package:flutter_submission/pages/home.dart';
import 'package:flutter_submission/pages/register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              child: Image.asset(
                'images/bouquet-flowers.jpg',
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              'Rabio',
                              style: TextStyle(
                                fontFamily: 'Anydore',
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              'A Wedding Planner App',
                              style: TextStyle(
                                fontFamily: 'Alex',
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: LoginArea(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              "Or ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Didn't Have An Account Yet?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return RegisterPage();
                                  }));
                                },
                                child: Text(
                                  "Register Here!",
                                  style: TextStyle(
                                      // color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginArea extends StatefulWidget {
  @override
  _LoginAreaState createState() => _LoginAreaState();
}

class _LoginAreaState extends State<LoginArea> {
  var _obscureText = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Insert Your Username',
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          child: TextField(
            autocorrect: false,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: 'Insert Your Password',
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white),
              suffixIcon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
                color: Colors.white,
              ),
            ),
            onTap: _togglePasswordVisibility,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ForgotPasswordPage();
                    }));
                  },
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_open),
                        Text(' Login'),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RabioAppBar();
                      }));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
