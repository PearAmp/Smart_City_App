import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BlockItem extends StatefulWidget {
  const BlockItem({
    Key? key,
    this.boxcolor,
    required this.title,
    this.icon,
    this.IconColor,
    this.linkpageroute,
    // this.height,
  }) : super(key: key);
  final Color? boxcolor;
  final String title;
  final IconData? icon;
  final Color? IconColor;
  final Function()? linkpageroute;
  // final double? height;

  @override
  State<BlockItem> createState() => _BlockItemState();
}

class _BlockItemState extends State<BlockItem> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        onTap: widget.linkpageroute,
        child: Container(
          height: 150,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          color: widget.boxcolor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 50,
                  height: 50,
                  color: HexColor('38A065'),
                  child: Icon(
                    widget.icon,
                    color: widget.IconColor,
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Text(
                  widget.title,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
