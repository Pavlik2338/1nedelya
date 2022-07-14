import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DopInfo extends StatelessWidget {
  Widget InfoString(String string1, String string2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                string1,
                style: TextStyle(
                  color: Color.fromRGBO(151, 151, 153, 1),
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                string2,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InfoString('Номер объявления', 'RF488918'),
          InfoString('Пол питомца', 'Мужской'),
          InfoString('Добавлено', 'Вт, 21.09.2021'),
          InfoString('Найден(а)', 'Вт, 21.09.2021'),
          InfoString('Имя хозяина', 'Владимир'),
        ],
      ),
    );
  }
}
