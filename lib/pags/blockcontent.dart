import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:love_pat/components/blockitem.dart';

import '../services/navigator.dart';

class BlockContent extends StatelessWidget {
  const BlockContent({super.key});

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
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Row(
            children: [
              Expanded(
                  child: BlockItem(
                linkpageroute: () => sendToBack(context: context),
                title: 'ff',
                boxcolor: Colors.amber,
                icon: Icons.delete,
                IconColor: Colors.green,
              )),
              Gap(20),
              Expanded(
                  child: BlockItem(
                title: 'ff',
                boxcolor: Colors.amber,
                icon: Icons.abc,
                IconColor: Colors.blue,
              ))
            ],
          )
        ],
      ),
    );
  }
}
