import 'package:flutter/material.dart';
import 'package:flutter_application_3/resourse/colors.dart';

class TextDescription extends StatelessWidget {
  String adress = 'Красноармейская улица, 37, Ростов-на-Дону';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: Text(
              'Пропал кот',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
            ),
            child: Text(
              adress,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21),
            child: GestureDetector(
              onTap: () {
                print('proverka knoprki');
              },
              child: Text(
                "Показать на карте",
                style: TextStyle(
                  color: appColors.likeless,
                  fontSize: 13,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 20, 22, 25),
            child: Text(
              "На Красноармейской пропал каракал. Предположительно выпрыгнул через открытое окно. Отзывается на свою кличку “Шлёпа” или “Русский кот”. Очень любит пельмени. Клеймо отсутствует, полное телосложение. Чистый и ухоженный, людей не боится.",
              softWrap: true,
              style: TextStyle(
                fontSize: 13.2,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}

class NumberOfMaster extends StatefulWidget {
  @override
  NumberOfMasterState createState() => NumberOfMasterState();
}

class NumberOfMasterState extends State<NumberOfMaster> {
  bool showNumber = true;
  String currentButtonText = 'Показать номер хозяина';
  String buttonClickText = 'Показать номер хозяина';
  String number = '8-800-555-35-35';
  void Changebutton() {
    if (showNumber == true) {
      showNumber = !showNumber;
      currentButtonText = number;
    } else {
      showNumber = !showNumber;
      currentButtonText = buttonClickText;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 331,
        height: 45,
        child: TextButton(
          style: ElevatedButton.styleFrom(
            primary: Color.fromRGBO(207, 233, 220, 1),
          ),
          onPressed: () {
            setState(() {
              Changebutton();
              print("test");
            });
          },
          child: Text(
            currentButtonText,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
