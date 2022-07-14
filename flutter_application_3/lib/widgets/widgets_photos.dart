import 'package:flutter/material.dart';
import 'package:flutter_application_3/resourse/colors.dart';

class ScrollPhotoPet2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScrollPhotoPetState();
}

class ScrollPhotoPetState extends State<ScrollPhotoPet2> {
  List<Widget> pages = [
    Container(
      child: Image.network(
        "https://memepedia.ru/wp-content/uploads/2020/10/screenshot_11-3.png",
      ),
    ),
    Container(
      child: Image.network(
          "https://memepedia.ru/wp-content/uploads/2020/10/bolshoj-shlepa-1.jpg",
          fit: BoxFit.fill),
    ),
    Container(
      child: Image.network(
          "https://memepedia.ru/wp-content/uploads/2020/10/big-floppa-1-360x270.jpg",
          fit: BoxFit.fill),
    ),
    Container(
      child: Image.network(
          "https://icdn.lenta.ru/images/2022/02/22/12/20220222122412571/wide_4_3_f7a1fd0b424854c0415f2faa1efa1b93.jpeg",
          fit: BoxFit.fill),
    ),
  ];
  int count = 1;
  int index;

  int countPage() {
    count++;
    if (count > pages.length) {
      count = 1;
    }
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          SizedBox(
            width: 471,
            height: 310,
            child: PageView(
              children: pages,
              onPageChanged: (count) {
                setState(() {
                  countPage();
                });
              },
            ),
          ),
          Container(
            height: 18,
            width: 34,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Color.fromARGB(249, 0, 0, 0),
              borderRadius: BorderRadius.circular(1),
            ),
            margin: EdgeInsets.all(20.5),
            child: Text(
              "$count/4",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ],
    );
  }
}
