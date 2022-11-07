import 'package:flutter/material.dart';

class FieldContent extends StatefulWidget {
  const FieldContent({
    Key? key,
    required this.titlefield,
  }) : super(key: key);
  final String titlefield;

  @override
  State<FieldContent> createState() => _FieldContentState();
}

class _FieldContentState extends State<FieldContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20),
          filled: true,
          fillColor: Colors.white,
          label: Text(
            widget.titlefield,
            style: TextStyle(
                fontFamily: 'Prompt', fontSize: 15, color: Colors.grey[500]),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 1, color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(width: 1, color: Colors.blue.shade400),
          ),
        ),
      ),
    );
  }
}
