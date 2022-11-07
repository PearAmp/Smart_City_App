import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BoxNew extends StatefulWidget {
  const BoxNew({
    Key? key,
    required this.title,
    required this.day,
    required this.month,
    required this.year,
  }) : super(key: key);
  final String title;
  final String day;
  final String month;
  final String year;

  @override
  State<BoxNew> createState() => _BoxNewState();
}

class _BoxNewState extends State<BoxNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ]),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80,
              child: Image.asset('assets/images/img_1.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  textDirection: TextDirection.ltr,
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Gap(10),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 25,
                    ),
                    Gap(10),
                    Text(
                      widget.day,
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 14,
                      ),
                    ),
                    Gap(10),
                    Text(
                      widget.month,
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 14,
                      ),
                    ),
                    Gap(10),
                    Text(
                      widget.year,
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
