import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.1),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Login',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: height * 0.10),
          Row(
            children: [
              SizedBox(width: width * 0.08),
              Container(
                height: height * 0.065,
                width: width * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffFEF2EE),
                ),
                child: const Icon(
                  Icons.email,
                  color: Color(0xffF96D69),
                ),
              ),
              SizedBox(width: width * 0.03),
              SizedBox(
                width: width * 0.7,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: const Color(0xffFEF2EE),
                    focusColor: Colors.pink,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffF96D69), width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xffF96D69), width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.03),
          Row(
            children: [
              SizedBox(width: width * 0.08),
              Container(
                height: height * 0.065,
                width: width * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xffFEF2EE),
                ),
                child: const Icon(
                  Icons.lock,
                  color: Color(0xffF96D69),
                ),
              ),
              SizedBox(width: width * 0.03),
              SizedBox(
                width: width * 0.7,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color(0xffFEF2EE),
                    focusColor: Colors.pink,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(0xffF96D69), width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xffF96D69), width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black),
                )),
          ),
          SizedBox(height: height * 0.1),
          SizedBox(
            height: height * 0.07,
            width: width * 0.85,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: const Color(0xffF96D69),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          SizedBox(height: height * 0.04),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
              child: const Text(
                'Don\'t have an account? Sign Up',
                style: TextStyle(color: Colors.black),
              )),
        ],
      )),
    );
  }
}
