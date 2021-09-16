import 'package:flutter/material.dart';
import 'package:swiggy/utils/routes.dart';
import 'package:swiggy/utils/theme.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              "I'm a new user,",
              style: TextStyle(fontSize: 20),
            ),
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, Myroutes.signUpRoute);
              },
              child: Text(
                ' Sign Up',
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
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/images/icon.png',
                  width: 150,
                ),
              ),
              Text(
                'Welcome',
                textAlign: TextAlign.center,
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.orange[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sign in to continue!',
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
                    label: 'Email ID', hint: 'Enter you email'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
                obscureText: true,
                decoration: MyTheme.textFieldStyle(
                    label: 'Password', hint: 'Enter Your Password'),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  new Spacer(),
                  InkWell(
                      onTap: () {}, child: 'Forget Password?'.text.xl.make())
                ],
              ),
              SizedBox(
                height: 10,
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
