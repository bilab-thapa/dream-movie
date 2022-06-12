import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import '../repository/user_repository.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  _navigateToScreen(bool isLogin) {
    if (isLogin) {
      Navigator.pushNamed(context, '/home');
    } else {
      MotionToast.error(
              description:
                  const Text("Either Username or Password is incorrect"))
          .show(context);
    }
  }

  _login() async {
    try {
      UserRepository userRepository = UserRepository();
      bool isLogin = await userRepository.login(
          _emailController.text, _passwordController.text);
      if (isLogin) {
        _navigateToScreen(true);
      } else {
        _navigateToScreen(false);
      }
    } catch (e) {
      MotionToast.error(
        description: Text("Error: ${e.toString()}"),
      ).show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.1),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.07),
              SizedBox(
                width: width * 0.9,
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: const Color(0xffFEF2EE),
                    focusColor: Colors.pink,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }

                    return null;
                  },
                ),
              ),
              SizedBox(height: height * 0.03),
              SizedBox(width: width * 0.03),
              SizedBox(
                width: width * 0.9,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color(0xffFEF2EE),
                    focusColor: Colors.pink,
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.purple, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }

                    return null;
                  },
                ),
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
                    primary: Colors.purple,
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _login();
                    }
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
          ),
        )),
      ),
    );
  }
}
