import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollViewSimialr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScrollViewSimialrState();
}

class ScrollViewSimialrState extends State<ScrollViewSimialr> {
  Widget Recommendations(String scr) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: Row(children: [
        Container(
          width: 250,
          height: 420,
          child: Column(children: [
            Image.network(
              scr,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Найдена кошка, 3-я круговая улица",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Container(
              height: 26,
              width: 250,
              child: Text(
                "На западном пропала собака овчарка, приметы: рост метров двадцать ...",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 2,
              ),
            ),
            Container(
              height: 10,
              width: 250,
              child: Text(
                "8.10.2021",
                style: TextStyle(
                  color: Color.fromRGBO(151, 151, 153, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(22, 27, 22, 20),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Похожие пропавшие',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        SizedBox(
          height: 320,
          width: 411,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Recommendations(
                  "https://cdnn21.img.ria.ru/images/07e5/06/18/1738448523_0:21:864:669_1920x0_80_0_0_9920bbedf3cb1a14b1358e0677d01106.jpg"),
              Recommendations(
                  "https://doctor-veterinar.ru/media/k2/items/cache/675d28c04794e3c683f4419536c4c15f_L.jpg")
            ],
          ),
        )
      ],
    );
  }
}
