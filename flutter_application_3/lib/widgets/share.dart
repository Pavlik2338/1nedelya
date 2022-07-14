import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:async';

enum SocialMedia { ok, vk, facebook, twitter, email }

class Sharemassege extends StatelessWidget {
  @override
  String link = "flutter";
  String GetShare() {}
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 17, 22, 15),
            child: Center(
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Поделиться",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Row(
            children: [
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                      width: 44,
                      height: 44,
                      child: Image.network(
                          "https://pngicon.ru/file/uploads/vk.png")),
                ),
                onTap: () => share(SocialMedia.vk),
              ),
              GestureDetector(
                child: SizedBox(
                    width: 44,
                    height: 44,
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTndw_OXHRFgg5HqDW82SO-1nnsX8VEx9zNRw&usqp=CAU")),
                onTap: () => share(SocialMedia.ok),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: SizedBox(
                      width: 44,
                      height: 44,
                      child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/145/145802.png")),
                ),
                onTap: () => share(SocialMedia.facebook),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: Divider(
              height: 5,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          )
        ],
      ),
    );
  }

  Future share(SocialMedia socialPlatform) async {
    final text = "propal kot";
    final urls = {
      SocialMedia.vk:
          "http://vk.com/share.php?url={$text}&description={$text}&noparse=true",
      SocialMedia.ok:
          "https://connect.ok.ru/offer?url={https://pub.dev/}description={$text}",
      SocialMedia.facebook:
          "https://www.facebook.com/sharer/sharer.php?u={https://pub.dev/}",
    };
    final url = urls[socialPlatform];
    await launch(url);
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox;

    String text = "пропал кот";
    await Share.share(text,
        subject: link,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
