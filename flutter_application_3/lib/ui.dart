// ignore_for_file: deprecated_member_use
import 'package:share_plus/share_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/resourse/colors.dart';
import 'package:flutter_application_3/widgets/share.dart';
import 'package:flutter_application_3/widgets/widgets_photos.dart';
import 'package:flutter_application_3/resourse/Icons.dart';
import 'package:flutter_application_3/widgets/description.dart';
import 'package:flutter_application_3/widgets/dopInfo.dart';
import 'package:flutter_application_3/widgets/simialr.dart';
import 'package:flutter_application_3/widgets/comments.dart';
import 'package:flutter_application_3/widgets/lastpart.dart';
import 'package:flutter_application_3/widgets/textpart.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  IconData firstIcon = icon_likeLess;
  bool iconstate = false;
  Color colorIcon = appColors.likeless;
  void changeState() {
    if (iconstate == true) {
      firstIcon = icon_likeLess;
      colorIcon = appColors.likeless;
    } else {
      firstIcon = icon_likefull;
      colorIcon = appColors.likefull;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),
        primaryTextTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.green),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          leading: RaisedButton(
            color: Colors.white,
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.arrow_left,
                  color: Colors.green,
                ),
                Text(
                  'назад',
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                firstIcon,
                color: colorIcon,
              ),
              onPressed: () {
                setState(() {
                  changeState();
                  iconstate = !iconstate;
                });
              },
              tooltip: "Отслеживать",
            ),
            IconButton(
              icon: const Icon(
                Icons.file_download,
                color: appColors.likeless,
              ),
              onPressed: () => _onShare(context),
            ),
          ],
        ),
        body: Center(
          child: ListView(
            children: [
              ScrollPhotoPet2(),
              TextDescription(),
              NumberOfMaster(),
              Sharemassege(),
              DopInfo(),
              ScrollViewSimialr(),
              Comments(),
              LastPart(),
              TextPart()
            ],
          ),
        ),
      ),
    );
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox;

    String text = "пропал кот";
    await Share.share(text,
        subject: 'link',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
