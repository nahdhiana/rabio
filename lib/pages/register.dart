import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
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
                    RegisterArea(),
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

class RegisterArea extends StatefulWidget {
  const RegisterArea({Key? key}) : super(key: key);

  @override
  _RegisterAreaState createState() => _RegisterAreaState();
}

class _RegisterAreaState extends State<RegisterArea> {
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
          padding:
              const EdgeInsets.only(left: 50, right: 50, bottom: 10, top: 35),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Insert Your e-mail Address',
              labelText: 'E-Mail',
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
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
          padding: const EdgeInsets.only(left: 50, right: 50, bottom: 10),
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
          padding: const EdgeInsets.only(left: 50, right: 50, top: 15),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.app_registration),
                    Text(' Register'),
                  ],
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
