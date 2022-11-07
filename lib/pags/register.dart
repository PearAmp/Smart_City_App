import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:love_pat/components/button.dart';
import 'package:love_pat/components/textfield.dart';
import 'package:love_pat/pags/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView(
        children: [
          Text(
            'Sign Up',
            style: TextStyle(
                fontFamily: 'Prompt',
                fontSize: 50,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Gap(20),
          FieldContent(titlefield: 'Email'),
          Gap(15),
          FieldContent(titlefield: 'User Name'),
          Gap(15),
          FieldContent(titlefield: 'Age'),
          Gap(15),
          FieldContent(titlefield: 'Day Of Birth'),
          Gap(15),
          FieldContent(titlefield: 'village'),
          Gap(15),
          FieldContent(titlefield: 'District'),
          Gap(15),
          FieldContent(titlefield: 'Occupation'),
          Gap(20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 120),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: Mybutton(title: 'Sign Up'),
            ),
          )
        ],
      ),
    ));
  }
}
