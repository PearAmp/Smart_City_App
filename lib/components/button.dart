import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mybutton extends StatefulWidget {
  const Mybutton({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[300],
      ),
      child: Align(
        child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: 'Prompt',
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
