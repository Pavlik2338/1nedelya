import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  var controller = TextEditingController();

  Widget Comment(
      String name, String comment, String data, BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 94,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(22, 6, 53, 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 7, 0, 7),
                  child: Text(
                    comment,
                    softWrap: true,
                    maxLines: 3,
                    style:
                        TextStyle(fontSize: 13.2, fontWeight: FontWeight.w300),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data,
                    style: TextStyle(
                        color: Color.fromRGBO(151, 151, 153, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(22, 27, 22, 25),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "2 Комментария",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Row(children: [
          Container(
            width: 411,
            height: 54,
            color: Color.fromRGBO(246, 246, 246, 1),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  suffixIcon: TextButton(
                    child: Text(
                      'Отпр.',
                      style: TextStyle(
                        color: Color.fromRGBO(37, 138, 86, 0.6),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        controller.clear();
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Ваш комментарий...",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 3, horizontal: 2),
                ),
              ),
            ),
          ),
        ]),
        Column(children: [
          Container(
            color: Color.fromRGBO(241, 252, 239, 1),
            child: Comment(
                'Арсений',
                "“На Красноармейской пропал каракал” -\n звучит уже неплохо!",
                "Понедельник, 5:33",
                context),
          ),
          Comment(
              'Арсений',
              "“На Красноармейской пропал каракал” -\n звучит уже неплохо!",
              "Понедельник, 5:33",
              context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
            child: Divider(
              height: 5,
              color: Color.fromRGBO(0, 0, 0, 1),
            ),
          )
        ])
      ],
    );
  }
}
