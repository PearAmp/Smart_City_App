import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:love_pat/components/button.dart';
import 'package:love_pat/pags/forgotpassword.dart';
import 'package:love_pat/pags/home.dart';
import 'package:love_pat/pags/register.dart';
import 'package:love_pat/pags/resetpass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // show the password or not
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          children: [
            Text(
              'Login',
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 50,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            Gap(50),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            Gap(30),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.key_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    )),
              ),
            ),
            Gap(10),
            Container(
              child: InkWell(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    fontFamily: 'Prompt',
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.end,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Forgotpassword()),
                  );
                },
              ),
            ),
            Gap(15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Mybutton(title: 'Login'),
              ),
            ),
            Gap(20),
            Align(
              child: Text(
                'Login With',
                style: TextStyle(
                    fontFamily: 'Prompt',
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Gap(20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 55,
                    ),
                  ),
                  Gap(30),
                  SizedBox(
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
            Gap(30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'สร้างบัญชีผู้ใช้งาน',
                    style: TextStyle(fontFamily: 'Kanit'),
                  ),
                  Gap(20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                    child: Text('ลงทะเบียน',
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            color: Colors.blue[500],
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
