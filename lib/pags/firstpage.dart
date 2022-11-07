import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';
import 'package:love_pat/components/boxnew.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#6E9BC6'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: Icon(Icons.arrow_back_ios_new),
        // ),
        title: Align(
          child: Text(
            'Love Pat Love Only',
            style: TextStyle(fontFamily: 'Kanit', fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        children: [
          BoxNew(
            title: 'Black Pink Ture มาเยือนแล้ววันนี้ ...',
            day: '20',
            month: 'October',
            year: '2022',
          ),
          Gap(10),
          BoxNew(
            title: 'น้ำลดแล้ว !! น้ำเกลี้ยง ศรีสะเกษ...',
            day: '20',
            month: 'October',
            year: '2022',
          )
        ],
      ),
    );
  }
}
