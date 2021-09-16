import 'package:flutter/material.dart';
import 'package:swiggy/utils/theme.dart';
import 'package:swiggy/utils/routes.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        color: Colors.grey[350],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have account?",
              style: TextStyle(fontSize: 20),
            ),
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, Myroutes.loginRoute);
              },
              child: Text(
                ' Sign In',
                style: TextStyle(
                    color: Colors.orange[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
                width: 150,
                child: Image.asset(
                  'assets/images/icon.png',
                ),
              ),
              Text(
                'Create Account',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.orange[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sign up to get started!',
                textScaleFactor: 1.1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
                decoration: MyTheme.textFieldStyle(
                    label: 'Full Name', hint: 'Enter Your Full Name'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
                decoration: MyTheme.textFieldStyle(
                    label: 'Email ID', hint: 'Enter You Email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
                obscureText: true,
                decoration: MyTheme.textFieldStyle(
                    label: 'Password', hint: 'Set Your Password'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orange[900],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue[900],
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Login With Facebook',
                          style: TextStyle(
                              color: Colors.blue[900],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
