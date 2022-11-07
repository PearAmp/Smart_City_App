import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:love_pat/components/button.dart';

import 'forgotpassword.dart';
import 'login.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure = true;
  bool _isObscureConfirm = true;

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
              'Reset Password',
              style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: 40,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            Gap(50),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
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
            Gap(30),
            SizedBox(
              height: 50,
              child: TextField(
                obscureText: _isObscureConfirm,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Confirm Password',
                    suffixIcon: IconButton(
                      icon: Icon(_isObscureConfirm
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscureConfirm = !_isObscureConfirm;
                        });
                      },
                    )),
              ),
            ),
            Gap(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Mybutton(title: 'Reset'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
