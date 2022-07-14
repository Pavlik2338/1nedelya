import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextPart extends StatelessWidget {
  Widget StringText(String string) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 7.5),
      child: Text(
        string,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget MelkiStringText(String string) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 7.5),
      child: Text(
        string,
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(140, 140, 140, 1)),
      ),
    );
  }

  Widget CustomDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Divider(
        height: 5,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    );
  }

  Widget Zagolovok(String str) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 7.5),
      child: Text(
        str,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          height: 5,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        Zagolovok('PET911'),
        StringText("Разместите объявление"),
        StringText("Платные услуги"),
        StringText("Полезные советы"),
        StringText("Отзывы"),
        StringText("Вопросы-ответы"),
        StringText("О нас"),
        StringText("Контакты"),
        CustomDivider(),
        Zagolovok('Ускорьте поиск питомца'),
        StringText("Распространите объявление в социальных сетях"),
        StringText("Оповестите клиники и приюты"),
        StringText("Сообщите волонтёрам о пропаже"),
        StringText("Оповестите жителей района"),
        StringText("Создайте премиум-объявление"),
        StringText("Получайте уведомления о похожих питомцах"),
        CustomDivider(),
        Zagolovok('Помощь'),
        StringText("Станьте волонтёром"),
        StringText("Поддержите проект"),
        CustomDivider(),
        Zagolovok('Связаться с нами'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8 (800) 350-06-10',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Пн-Пт с 9:00 до 18:00 (МСК)',
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: SizedBox(
                  height: 19,
                  width: 19,
                  child: Image.network(
                      "https://w7.pngwing.com/pngs/567/224/png-transparent-vk-social-media-icon.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: SizedBox(
                  height: 19,
                  width: 19,
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/48/48971.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: SizedBox(
                  height: 19,
                  width: 19,
                  child: Image.network(
                      "https://e7.pngegg.com/pngimages/261/650/png-clipart-computer-icons-facebook-logobblack-logo-desktop-wallpaper.png"),
                ),
              ),
              SizedBox(
                height: 19,
                width: 19,
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/39/39552.png"),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Divider(
            height: 5,
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        MelkiStringText('Пропавшие и найденные животные России'),
        MelkiStringText('Пропавшие и найденные животные России по породам'),
        MelkiStringText('Политика конфеденциальности'),
        MelkiStringText('Условия пользования'),
      ],
    );
  }
}
