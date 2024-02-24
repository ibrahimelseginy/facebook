import 'package:facebook/home_screen.dart';
import 'package:facebook/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 88, 150, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              const Spacer(),
              const Icon(
                Icons.facebook,
                color: Colors.white,
                size: 50,
              ),
              const Spacer(),
              const Text_Field(
                hint: 'Email Address',
                textInputType: TextInputType.emailAddress,
              ),
              const Text_Field(
                hint: 'Password',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(
                      HomeScreen.routeName,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromRGBO(78, 104, 161, 1),
                      foregroundColor: Colors.white.withOpacity(.5)),
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white.withOpacity(.5)),
                  ),
                ),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up For Facebook',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  )),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
