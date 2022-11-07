import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:love_pat/pags/home.dart';
import 'package:love_pat/pags/login.dart';

import '../components/button.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
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
          padding: EdgeInsets.only(top: 100, left: 20, right: 20),
          children: [
            Text(
              'Send To News Password',
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            Gap(50),
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Email',
                ),
              ),
            ),
            Gap(30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Mybutton(title: 'Send'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
